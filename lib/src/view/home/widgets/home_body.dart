part of '../home_screen.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
    );
  }
}
