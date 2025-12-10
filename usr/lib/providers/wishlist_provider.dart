import 'package:flutter/foundation.dart';
import '../models/product.dart';

class WishlistProvider with ChangeNotifier {
  final List<Product> _items = [];

  List<Product> get items => _items;

  bool isInWishlist(Product product) {
    return _items.contains(product);
  }

  void addItem(Product product) {
    if (!_items.contains(product)) {
      _items.add(product);
      notifyListeners();
    }
  }

  void removeItem(Product product) {
    _items.remove(product);
    notifyListeners();
  }

  void clear() {
    _items.clear();
    notifyListeners();
  }
}