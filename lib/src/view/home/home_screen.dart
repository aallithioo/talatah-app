import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:talatah/src/app/widgets/custom_appbar.dart';

import '../../app/themes/color.dart';
import '../../app/themes/fontweight.dart';
import '../../app/themes/size.dart';
import '../../app/themes/theme.dart';
import '../../app/widgets/custom_border.dart';
import '../../app/widgets/custom_padding.dart';
import '../../app/widgets/custom_sizebox.dart';
import '../../app/widgets/custom_snackbar.dart';

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

    // TODO: Load data from Hive
    _getItems();
  }

// TODO: Get all items from Hive
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

// TODO: Create a new item
  Future<void> _createItem(Map<String, dynamic> newItem) async {
    await _box.add(newItem);
    _getItems();
  }

// TODO: Read an item
// Retieve a single item from Hive by using its key
  Map<String, dynamic> _readItem(String key) {
    return _box.get(key);
  }

// TODO: Update an item
  Future<void> _updateItem(int itemKey, Map<String, dynamic> item) async {
    await _box.put(itemKey, item);
    _getItems();
  }

// TODO: Delete an item
  Future<void> _deleteItem(int itemKey) async {
    await _box.delete(itemKey);
    _getItems();

    // TODO: Display a snackbar
    ScaffoldMessenger.of(context).showSnackBar(
      kSnackBar('Item has removed')!,
    );
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
      elevation: 5,
      builder: (_) {
        return Container(
          // height: MediaQuery.of(context).size.height / 2.35,
          padding: kPaddingAllMedium,
          color: kSecondaryColor,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // TODO: Add a text field for the vendor
              TextField(
                controller: _vendorController,
                maxLines: 1,
                maxLength: 24,
                decoration: InputDecoration(
                  counter: const SizedBox(),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: kBorderRadiusTiny / 2,
                  ),
                  hintText: 'e.g. Google',
                  hintStyle: kThioAlli.textTheme.caption!.copyWith(
                    color: kGreyColorShade400,
                    fontSize: kSizeSmall / 1.3,
                    fontWeight: kFontWeightLight,
                  ),
                  filled: true,
                  fillColor: kGreyColorShade50,
                ),
              ),
              kSizeBoxVerticalSmall,
              // TODO: Add a text field for email
              TextField(
                controller: _emailController,
                maxLines: 1,
                maxLength: 24,
                decoration: InputDecoration(
                  counter: const SizedBox(),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: kBorderRadiusTiny / 2,
                  ),
                  hintText: 'e.g. johndoe@example.com',
                  hintStyle: kThioAlli.textTheme.caption!.copyWith(
                    color: kGreyColorShade400,
                    fontSize: kSizeSmall / 1.3,
                    fontWeight: kFontWeightLight,
                  ),
                  filled: true,
                  fillColor: kGreyColorShade50,
                ),
              ),
              kSizeBoxVerticalSmall,
              // TODO: Add a text field for password
              TextField(
                controller: _passwordController,
                maxLines: 1,
                maxLength: 24,
                decoration: InputDecoration(
                  counter: const SizedBox(),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: kBorderRadiusTiny / 2,
                  ),
                  hintText: 'j0hnD0e@123',
                  hintStyle: kThioAlli.textTheme.caption!.copyWith(
                    color: kGreyColorShade400,
                    fontSize: kSizeSmall / 1.3,
                    fontWeight: kFontWeightLight,
                  ),
                  filled: true,
                  fillColor: kGreyColorShade50,
                ),
              ),
              kSizeBoxVerticalSmall,
              // TODO: Add a button to save the item
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(kBlueColorShade400),
                ),
                onPressed: () async {
                  if (itemKey == null) {
                    _createItem({
                      'vendor': _vendorController.text,
                      'email': _emailController.text,
                      'password': _passwordController.text,
                    });
                  }

                  _vendorController.clear();
                  _emailController.clear();
                  _passwordController.clear();

                  Navigator.of(context).pop();
                },
                child: Container(
                  width: double.infinity,
                  height: 50,
                  child: Center(
                    child: Text('Create'.toUpperCase()),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: kAppBar('talatah'),
      body: SafeArea(
        child: Padding(
          padding: kPaddingSymetricHorizontalLarge,
          child: _items.isEmpty
              ? Center(
                  child: Text(
                    'No data found',
                    style: kThioAlli.textTheme.bodyText1!.copyWith(
                      color: kAccentColor,
                      fontWeight: kFontWeightLight,
                    ),
                  ),
                )
              : ListView.builder(
                  itemCount: _items.length,
                  itemBuilder: (_, index) {
                    final currentItem = _items[index];
                    return GestureDetector(
                      // TODO: Add onLongPress
                      // TODO: Add box
                      child: Container(
                        margin: EdgeInsets.only(bottom: kSizeSmall),
                        padding: kPaddingSymetricHorizontalMedium,
                        width: double.infinity,
                        child: Column(
                          children: [
                            // TODO: Display vendor data
                            Text(
                              currentItem['vendor'],
                              style: kThioAlli.textTheme.headline5!.copyWith(
                                color: kAccentColor,
                                fontWeight: kFontWeightBold,
                              ),
                            ),
                            // TODO: Display email data
                            Text(
                              currentItem['email'],
                              style: kThioAlli.textTheme.bodyText1!.copyWith(
                                color: kAccentColor,
                                fontWeight: kFontWeightLight,
                              ),
                            ),
                            // TODO: Display password data
                            Text(
                              currentItem['password'],
                              style: kThioAlli.textTheme.bodyText1!.copyWith(
                                color: kAccentColor,
                                fontWeight: kFontWeightLight,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kSecondaryColor,
        onPressed: () => _showForm(context, null),
        child: Icon(
          Icons.add,
          color: kAccentColor.withOpacity(0.7),
        ),
      ),
    );
  }
}
