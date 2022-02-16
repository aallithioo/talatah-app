import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../../app/enums.dart';
import '../../app/themes/color.dart';
import '../../app/themes/letter_spacing.dart';
import '../../app/themes/theme.dart';
import '../../app/themes/font_size.dart';
import '../../app/themes/font_weight.dart';
import '../../app/widgets/divider.dart';
import '../../app/widgets/border.dart';
import '../../app/widgets/margin.dart';
import '../../app/widgets/padding.dart';
import '../../app/widgets/sizebox.dart';
import '../../app/widgets/custom_snackbar.dart';
import '../../app/widgets/custom_appbar.dart';
import '../../app/widgets/custom_bottom_nav_bar.dart';

// part './widgets/home_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> _items = [];

  final _box = Hive.box('box');

  @override
  void initState() {
    super.initState();

    _getItems();
  }

  void _getItems() {
    final data = _box.keys.map(
      (key) {
        final value = _box.get(key);
        return {
          "key": key,
          "vendor": value['vendor'],
          "email": value['email'],
          "password": value['password'],
        };
      },
    ).toList();

    setState(
      () {
        _items = data.reversed.toList();
      },
    );
  }

  Future<void> _createItem(Map<String, dynamic> newItem) async {
    await _box.add(newItem);
    _getItems();

    SetSnackbar.created;
  }

// Retieve a single item from Hive by using its key
  // ignore: unused_element
  Map<String, dynamic> _readItem(String key) {
    return _box.get(key);
  }

  Future<void> _updateItem(int itemKey, Map<String, dynamic> item) async {
    await _box.put(itemKey, item);
    _getItems();

    SetSnackbar.updated;
  }

  Future<void> _deleteItem(int itemKey) async {
    await _box.delete(itemKey);
    _getItems();

    SetSnackbar.deleted;
  }

// TextFields' controllers
  final TextEditingController _vendorController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // This function will be triggered when the floating button is pressed.
  //  It will alse be trigerred when you want to update an item
  void _showForm(BuildContext context, int? itemKey) async {
    // itemKey == null -> create a new item
    // itemKey != null -> update an existing item

    if (itemKey != null) {
      final existingItem =
          _items.firstWhere((element) => element['key'] == itemKey);
      _vendorController.text = existingItem['vendor'];
      _emailController.text = existingItem['email'];
      _passwordController.text = existingItem['password'];
    }

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: SetColor.secondary,
      shape: RoundedRectangleBorder(
        borderRadius: SetBorder.radiusTopSmall,
      ),
      elevation: 5,
      builder: (_) {
        return Padding(
          padding: SetPadding.allMedium,
          child: Container(
            margin: SetMargin.onlyTopMedium,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemKey == null ? 'Create' : 'Update',
                  style: kThioAlli.textTheme.headline3!.copyWith(
                    color: SetColor.light,
                    fontWeight: SetFontWeight.bold,
                  ),
                ),
                SetSizeBox.verticalTiny,
                Text(
                  itemKey == null
                      ? 'Make sure you input the correct credential!'
                      : 'Do you want to change your credential?',
                  style: kThioAlli.textTheme.bodyText2!.copyWith(
                    color: SetColor.light,
                    fontWeight: SetFontWeight.light,
                  ),
                ),
                SetSizeBox.verticalMedium,
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: SetColor.tertiary.withOpacity(0.5),
                    borderRadius: SetBorder.radiusAllTiny,
                  ),
                  child: TextField(
                    style: kThioAlli.textTheme.bodyText2!.copyWith(
                      color: SetColor.accent,
                    ),
                    cursorColor: SetColor.secondary,
                    controller: _vendorController,
                    maxLines: 1,
                    maxLength: 64,
                    decoration: InputDecoration(
                      contentPadding: SetPadding.allSmall,
                      counter: const SizedBox(),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: SetBorder.radiusAllTiny / 2,
                      ),
                      hintText: 'e.g. Google',
                      hintStyle: kThioAlli.textTheme.caption!.copyWith(
                        color: SetColor.grey_400,
                        fontSize: SetFontSize.small / 1.3,
                        fontWeight: SetFontWeight.light,
                      ),
                      filled: true,
                      fillColor: SetColor.transparent,
                    ),
                  ),
                ),
                SetSizeBox.verticalTiny,
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: SetColor.tertiary.withOpacity(0.5),
                    borderRadius: SetBorder.radiusAllTiny,
                  ),
                  child: TextField(
                    style: kThioAlli.textTheme.bodyText2!.copyWith(
                      color: SetColor.accent,
                    ),
                    cursorColor: SetColor.secondary,
                    controller: _emailController,
                    maxLines: 1,
                    maxLength: 64,
                    decoration: InputDecoration(
                      contentPadding: SetPadding.allSmall,
                      counter: const SizedBox(),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: SetBorder.radiusAllTiny / 2,
                      ),
                      hintText: 'e.g. johndoe@example.com',
                      hintStyle: kThioAlli.textTheme.caption!.copyWith(
                        color: SetColor.grey_400,
                        fontSize: SetFontSize.small / 1.3,
                        fontWeight: SetFontWeight.light,
                      ),
                      filled: true,
                      fillColor: SetColor.transparent,
                    ),
                  ),
                ),
                SetSizeBox.verticalTiny,
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: SetColor.tertiary.withOpacity(0.5),
                    borderRadius: SetBorder.radiusAllTiny,
                  ),
                  child: TextField(
                    style: kThioAlli.textTheme.bodyText2!.copyWith(
                      color: SetColor.accent,
                    ),
                    cursorColor: SetColor.secondary,
                    controller: _passwordController,
                    maxLines: 1,
                    maxLength: 64,
                    decoration: InputDecoration(
                      contentPadding: SetPadding.allSmall,
                      counter: const SizedBox(),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: SetBorder.radiusAllTiny / 2,
                      ),
                      hintText: 'e.g. j0hnD0e@123',
                      hintStyle: kThioAlli.textTheme.caption!.copyWith(
                        color: SetColor.grey_400,
                        fontSize: SetFontSize.small / 1.3,
                        fontWeight: SetFontWeight.light,
                      ),
                      filled: true,
                      fillColor: SetColor.transparent,
                    ),
                  ),
                ),
                SetSizeBox.verticalMedium,
                itemKey == null
                    ? Column(
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(SetColor.blue_400),
                            ),
                            onPressed: () {
                              if (_vendorController.text.isEmpty ||
                                  _emailController.text.isEmpty ||
                                  _passwordController.text.isEmpty) {
                                SetSnackbar.error;
                              } else {
                                _createItem({
                                  'vendor': _vendorController.text,
                                  'email': _emailController.text,
                                  'password': _passwordController.text,
                                });

                                _vendorController.text = '';
                                _emailController.text = '';
                                _passwordController.text = '';

                                Navigator.of(context).pop();
                              }
                            },
                            child: SizedBox(
                              width: double.infinity,
                              height: 60,
                              child: Center(
                                child: Text(
                                  'Create'.toUpperCase(),
                                ),
                              ),
                            ),
                          ),
                          SetSizeBox.verticalSmall,
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(SetColor.secondary),
                              side: MaterialStateProperty.all(
                                const BorderSide(
                                  color: SetColor.accent,
                                  width: 2,
                                ),
                              ),
                            ),
                            onPressed: () {
                              _vendorController.text = '';
                              _emailController.text = '';
                              _passwordController.text = '';

                              Navigator.of(context).pop();
                            },
                            child: SizedBox(
                              width: double.infinity,
                              height: 60,
                              child: Center(
                                child: Text(
                                  'Cancel'.toUpperCase(),
                                  style: kThioAlli.textTheme.button!.copyWith(
                                    color: SetColor.accent,
                                    fontWeight: SetFontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(SetColor.blue_400),
                            ),
                            onPressed: () {
                              _updateItem(itemKey, {
                                'vendor': _vendorController.text.trim(),
                                'email': _emailController.text.trim(),
                                'password': _passwordController.text.trim(),
                              });

                              _vendorController.text.trim();
                              _emailController.text.trim();
                              _passwordController.text.trim();

                              Navigator.of(context).pop();
                            },
                            child: SizedBox(
                              width: double.infinity,
                              height: 60,
                              child: Center(
                                child: Text(
                                  'Update'.toUpperCase(),
                                ),
                              ),
                            ),
                          ),
                          SetSizeBox.verticalSmall,
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(SetColor.secondary),
                              side: MaterialStateProperty.all(
                                BorderSide(
                                  color: SetColor.error,
                                  width: 2,
                                ),
                              ),
                            ),
                            onPressed: () {
                              _deleteItem(itemKey);

                              _vendorController.text = '';
                              _emailController.text = '';
                              _passwordController.text = '';

                              Navigator.of(context).pop();
                            },
                            child: SizedBox(
                              width: double.infinity,
                              height: 60,
                              child: Center(
                                child: Text(
                                  'Delete'.toUpperCase(),
                                  style: kThioAlli.textTheme.button!.copyWith(
                                    color: SetColor.error,
                                    fontWeight: SetFontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SetSizeBox.verticalSmall,
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(SetColor.secondary),
                              side: MaterialStateProperty.all(
                                const BorderSide(
                                  color: SetColor.accent,
                                  width: 2,
                                ),
                              ),
                            ),
                            onPressed: () {
                              _vendorController.text = '';
                              _emailController.text = '';
                              _passwordController.text = '';

                              Navigator.of(context).pop();
                            },
                            child: SizedBox(
                              width: double.infinity,
                              height: 60,
                              child: Center(
                                child: Text(
                                  'Cancel'.toUpperCase(),
                                  style: kThioAlli.textTheme.button!.copyWith(
                                    color: SetColor.accent,
                                    fontWeight: SetFontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: kAppBar('talatah'),
      body: SafeArea(
        child: Container(
          margin: SetMargin.onlyTopSmall,
          child: _items.isEmpty
              ? Padding(
                  padding: SetPadding.symetricHorizontalMedium,
                  child: Center(
                    child: Text(
                      'No data found',
                      style: kThioAlli.textTheme.bodyText1!.copyWith(
                        color: SetColor.accent,
                        fontWeight: SetFontWeight.light,
                      ),
                    ),
                  ),
                )
              : Padding(
                  padding: SetPadding.symetricHorizontalMedium,
                  child: ListView.builder(
                    itemCount: _items.length,
                    itemBuilder: (_, index) {
                      final currentItem = _items[index];
                      return GestureDetector(
                        onTap: () => _showForm(context, currentItem['key']),
                        child: Container(
                          margin: SetMargin.onlyBottomSmall,
                          padding: SetPadding.symetricHorizontalMedium / 1.5,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: SetColor.secondary,
                            borderRadius: SetBorder.radiusAllTiny,
                          ),
                          child: Padding(
                            padding: SetPadding.symetricVerticalMedium / 1.5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  currentItem['vendor'],
                                  style:
                                      kThioAlli.textTheme.headline5!.copyWith(
                                    color: SetColor.accent,
                                    fontWeight: SetFontWeight.bold,
                                  ),
                                ),
                                SetSizeBox.verticalTiny,
                                SetDivider.thin,
                                SetSizeBox.verticalTiny,
                                Text(
                                  currentItem['email'],
                                  style:
                                      kThioAlli.textTheme.bodyText2!.copyWith(
                                    // color: SetColor.accent,
                                    color: SetColor.accent.withOpacity(0.6),
                                    fontWeight: SetFontWeight.light,
                                  ),
                                ),
                                SetSizeBox.verticalTiny,
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '\u25CF\u25CF\u25CF\u25CF\u25CF\u25CF\u25CF\u25CF',
                                      style: kThioAlli.textTheme.bodyText2!
                                          .copyWith(
                                        // color: SetColor.accent,
                                        color: SetColor.accent.withOpacity(0.6),
                                        fontSize: SetFontSize.tiny,
                                        fontWeight: SetFontWeight.light,
                                        letterSpacing:
                                            SetLetterSpacing.positive20 + 2,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
        ),
      ),
      floatingActionButton: Container(
        margin: SetMargin.onlyRightSmall,
        child: FloatingActionButton(
          backgroundColor: SetColor.blue_400.withOpacity(0.7),
          shape: ShapeBorder.lerp(
            RoundedRectangleBorder(
              borderRadius: SetBorder.radiusAllTiny,
            ),
            RoundedRectangleBorder(
              borderRadius: SetBorder.radiusAllTiny,
            ),
            0.5,
          ),
          onPressed: () => _showForm(context, null),
          child: Icon(
            Icons.add,
            color: SetColor.accent.withOpacity(0.7),
          ),
        ),
      ),
      bottomNavigationBar:
          const CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
