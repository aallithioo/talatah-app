import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:talatah/src/app/enums.dart';
import 'package:talatah/src/app/widgets/custom_appbar.dart';
import 'package:talatah/src/app/widgets/custom_bottom_nav_bar.dart';
import 'package:talatah/src/app/widgets/custom_margin.dart';

import '../../app/themes/color.dart';
import '../../app/themes/fontweight.dart';
import '../../app/themes/size.dart';
import '../../app/themes/theme.dart';
import '../../app/widgets/custom_border.dart';
import '../../app/widgets/custom_padding.dart';
import '../../app/widgets/custom_sizebox.dart';

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

    Get.snackbar(
      "Success",
      "Item created successfully",
      icon: Icon(
        Icons.notifications,
        size: kSizeMedium,
        color: kWhiteColorShade900,
      ),
      snackPosition: SnackPosition.TOP,
      borderRadius: 12,
      margin: kMarginAllMedium,
      colorText: kWhiteColorShade900,
      duration: const Duration(seconds: 4),
      isDismissible: true,
      dismissDirection: DismissDirection.horizontal,
      forwardAnimationCurve: Curves.easeOutBack,
      reverseAnimationCurve: Curves.easeIn,
      barBlur: kSizeMedium,
      shouldIconPulse: true,
    );
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

    Get.snackbar(
      "Success",
      "Data updated successfully",
      icon: Icon(
        Icons.notifications,
        size: kSizeMedium,
        color: kWhiteColorShade900,
      ),
      snackPosition: SnackPosition.TOP,
      borderRadius: 12,
      margin: kMarginAllMedium,
      colorText: kWhiteColorShade900,
      duration: const Duration(seconds: 4),
      isDismissible: true,
      dismissDirection: DismissDirection.horizontal,
      forwardAnimationCurve: Curves.easeOutBack,
      reverseAnimationCurve: Curves.easeIn,
      barBlur: kSizeMedium,
      shouldIconPulse: true,
    );
  }

// TODO: Delete an item
  Future<void> _deleteItem(int itemKey) async {
    await _box.delete(itemKey);
    _getItems();

    // TODO: Display a snackbar
    Get.snackbar(
      "Success",
      "Data deleted successfully",
      icon: Icon(
        Icons.notifications,
        size: kSizeMedium,
        color: kWhiteColorShade900,
      ),
      snackPosition: SnackPosition.TOP,
      borderRadius: 12,
      margin: kMarginAllMedium,
      colorText: kWhiteColorShade900,
      duration: const Duration(seconds: 4),
      isDismissible: true,
      dismissDirection: DismissDirection.horizontal,
      forwardAnimationCurve: Curves.easeOutBack,
      reverseAnimationCurve: Curves.easeIn,
      barBlur: kSizeMedium,
      shouldIconPulse: true,
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
      backgroundColor: kSecondaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(kSizeMedium),
          topRight: Radius.circular(kSizeMedium),
        ),
      ),
      elevation: 5,
      builder: (_) {
        return Padding(
          padding: kPaddingAllLarge,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // TODO: Add a text field for the vendor
              TextField(
                controller: _vendorController,
                maxLines: 1,
                maxLength: 64,
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
                maxLength: 64,
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
                obscuringCharacter: '•',
                maxLines: 1,
                maxLength: 64,
                showCursor: false,
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
              itemKey == null
                  ? Column(
                      children: [
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(kBlueColorShade400),
                          ),
                          onPressed: () {
                            if (_vendorController.text.isEmpty ||
                                _emailController.text.isEmpty ||
                                _passwordController.text.isEmpty) {
                              Get.snackbar(
                                "Error",
                                "Please fill all the fields",
                                icon: Icon(
                                  Icons.notifications,
                                  size: kSizeMedium,
                                  color: kWhiteColorShade900,
                                ),
                                snackPosition: SnackPosition.TOP,
                                borderRadius: 12,
                                margin: kMarginAllMedium,
                                colorText: kWhiteColorShade900,
                                duration: const Duration(seconds: 4),
                                isDismissible: true,
                                dismissDirection: DismissDirection.horizontal,
                                forwardAnimationCurve: Curves.easeOutBack,
                                reverseAnimationCurve: Curves.easeIn,
                                barBlur: kSizeMedium,
                                shouldIconPulse: true,
                              );
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
                          child: Container(
                            width: double.infinity,
                            height: 60,
                            child: Center(
                              child: Text(
                                'Create'.toUpperCase(),
                              ),
                            ),
                          ),
                        ),
                        kSizeBoxVerticalSmall,
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(kSecondaryColor),
                            side: MaterialStateProperty.all(
                              BorderSide(
                                color: kAccentColor,
                                width: 2,
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Container(
                            width: double.infinity,
                            height: 60,
                            child: Center(
                              child: Text(
                                'Cancel'.toUpperCase(),
                                style: kThioAlli.textTheme.button!.copyWith(
                                  color: kAccentColor,
                                  fontWeight: kFontWeightSemiBold,
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
                                MaterialStateProperty.all(kBlueColorShade400),
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
                          child: Container(
                            width: double.infinity,
                            height: 60,
                            child: Center(
                              child: Text(
                                'Update'.toUpperCase(),
                              ),
                            ),
                          ),
                        ),
                        kSizeBoxVerticalSmall,
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(kSecondaryColor),
                            side: MaterialStateProperty.all(
                              BorderSide(
                                color: kErrorColor,
                                width: 2,
                              ),
                            ),
                          ),
                          onPressed: () {
                            _deleteItem(itemKey);

                            Navigator.of(context).pop();
                          },
                          child: Container(
                            width: double.infinity,
                            height: 60,
                            child: Center(
                              child: Text(
                                'Delete'.toUpperCase(),
                                style: kThioAlli.textTheme.button!.copyWith(
                                  color: kErrorColor,
                                  fontWeight: kFontWeightSemiBold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        kSizeBoxVerticalSmall,
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(kSecondaryColor),
                            side: MaterialStateProperty.all(
                              BorderSide(
                                color: kAccentColor,
                                width: 2,
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Container(
                            width: double.infinity,
                            height: 60,
                            child: Center(
                              child: Text(
                                'Cancel'.toUpperCase(),
                                style: kThioAlli.textTheme.button!.copyWith(
                                  color: kAccentColor,
                                  fontWeight: kFontWeightSemiBold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
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
      body: _items.isEmpty
          ? Padding(
              padding: kPaddingSymetricHorizontalLarge,
              child: Center(
                child: Text(
                  'No data found',
                  style: kThioAlli.textTheme.bodyText1!.copyWith(
                    color: kAccentColor,
                    fontWeight: kFontWeightLight,
                  ),
                ),
              ),
            )
          : Padding(
              padding: kPaddingSymetricHorizontalLarge,
              child: ListView.builder(
                itemCount: _items.length,
                itemBuilder: (_, index) {
                  final currentItem = _items[index];
                  return GestureDetector(
                    // TODO: Add onLongPress
                    onTap: () => _showForm(context, currentItem['key']),
                    // TODO: Add box
                    child: Container(
                      margin: EdgeInsets.only(bottom: kSizeSmall),
                      padding: EdgeInsets.symmetric(
                        vertical: kSizeSmall,
                        horizontal: kSizeMedium,
                      ),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: kSecondaryColor,
                        borderRadius: kBorderRadiusTiny,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // TODO: Display vendor data
                          Text(
                            currentItem['vendor'],
                            style: kThioAlli.textTheme.headline5!.copyWith(
                              color: kAccentColor,
                              fontWeight: kFontWeightBold,
                            ),
                          ),
                          const SizedBox(height: 3),
                          Divider(
                            color: kAccentColor.withOpacity(0.2),
                            thickness: 1,
                          ),
                          const SizedBox(height: 3),
                          // TODO: Display email data
                          Text(
                            currentItem['email'],
                            style: kThioAlli.textTheme.bodyText2!.copyWith(
                              color: kAccentColor,
                              fontWeight: kFontWeightLight,
                            ),
                          ),
                          const SizedBox(height: 2),
                          // TODO: Display password data
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                currentItem['password'] != null
                                    ? '••••••••••••••••'
                                    : '',
                                style: kThioAlli.textTheme.bodyText2!.copyWith(
                                  color: kAccentColor,
                                  fontWeight: kFontWeightLight,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
      floatingActionButton: Container(
        margin: EdgeInsets.only(right: kSizeTiny),
        child: FloatingActionButton(
          backgroundColor: kBlueColorShade400.withOpacity(0.7),
          shape: ShapeBorder.lerp(
            RoundedRectangleBorder(
              borderRadius: kBorderRadiusTiny,
            ),
            RoundedRectangleBorder(
              borderRadius: kBorderRadiusTiny,
            ),
            0.5,
          ),
          onPressed: () => _showForm(context, null),
          child: Icon(
            Icons.add,
            color: kAccentColor.withOpacity(0.7),
          ),
        ),
      ),
      bottomNavigationBar:
          const CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
