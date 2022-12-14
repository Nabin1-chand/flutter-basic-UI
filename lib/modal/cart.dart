import 'package:first_app/modal/category.dart';

class Cart {
  static final cart = Cart._internal();
  Cart._internal();
  factory Cart() {
    return cart;
  }

  CatalogModal? _catalog;
  final List<int> _itemId = [];
  CatalogModal? get catalog => _catalog;

  set catalog(CatalogModal? newcatelog) {
    _catalog = newcatelog;
  }

// Get item in cart
  List<Item> get item => _itemId.map((id) => _catalog!.getById(id)).toList();
  void showList() {
    print(item);
    print("dhkahda");
  }

  // Get total price
  num get totalPrice =>
      item.fold(0, (previousValue, element) => previousValue + element.price);
  // Add item
  void add(Item item) {
    print(item.id);
    _itemId.add(item.id);
    showList();
  }

  //  Remove item
  void remove(Item item) {
    _itemId.remove(item.id);
  }
}
