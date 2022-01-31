import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

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

/*
    This function will be triggered when the floating button is pressed.
    It will alse be trigerred when you want to update an item
  */
  void _showForm(BuildContext context, int? itemKey) async {
    /*
      itemKey == null -> create a new item
      itemKey != null -> update an existing item
    */

    if (itemKey == null) {
      final existingItem =
          _items.firstWhere((element) => element['key'] == itemKey);
      _vendorController.text = existingItem['vendor'];
      _emailController.text = existingItem['email'];
      _passwordController.text = existingItem['password'];
    }

    showDialog(
      context: context,
      builder: (_) {
        return Center(
          child: Container(
            padding: kPaddingSymetricHorizontalSmall,
            child: Form(
              child: Column(
                children: [
                  kSizeBoxVerticalSmall,
                  // TODO: Add a text field for the vendor
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: kBorderRadiusSmall,
                    ),
                    child: TextFormField(
                      controller: _vendorController,
                      decoration: InputDecoration(
                        hintText: 'e.g. Google',
                        hintStyle: kThioAlli.textTheme.caption!.copyWith(
                          color: kGreyColorShade500,
                          fontSize: kSizeSmall / 1.5,
                          fontWeight: kFontWeightLight,
                        ),
                        filled: true,
                        fillColor: kGreyColorShade50,
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter a vendor';
                        }
                        return null;
                      },
                    ),
                  ),
                  kSizeBoxVerticalSmall,
                  // TODO: Add a text field for email
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: kBorderRadiusSmall,
                    ),
                    child: TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        hintText: 'e.g. johndoe@example.com',
                        hintStyle: kThioAlli.textTheme.caption!.copyWith(
                          color: kGreyColorShade500,
                          fontSize: kSizeSmall / 1.5,
                          fontWeight: kFontWeightLight,
                        ),
                        filled: true,
                        fillColor: kGreyColorShade50,
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter an email';
                        }
                        return null;
                      },
                    ),
                  ),
                  kSizeBoxVerticalSmall,
                  // TODO: Add a text field for password
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: kBorderRadiusSmall,
                    ),
                    child: TextFormField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                        hintStyle: kThioAlli.textTheme.caption!.copyWith(
                          color: kGreyColorShade500,
                          fontSize: kSizeSmall / 1.5,
                          fontWeight: kFontWeightLight,
                        ),
                        filled: true,
                        fillColor: kGreyColorShade50,
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter a password';
                        }
                        return null;
                      },
                    ),
                  ),
                  kSizeBoxVerticalSmall,
                  // TODO: Add a button to save the item
                  Container(
                    width: MediaQuery.of(context).size.width / 2.5,
                    height: 60,
                    decoration: BoxDecoration(
                      color: kAccentColor,
                      borderRadius: kBorderRadiusSmall,
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Create'.toUpperCase(),
                        style: kThioAlli.textTheme.button!.copyWith(
                          color: kSecondaryColor,
                          fontWeight: kFontWeightLight,
                        ),
                      ),
                    ),
                  ),
                  kSizeBoxVerticalSmall,
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
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
