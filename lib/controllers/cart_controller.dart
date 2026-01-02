import 'package:flutter/material.dart';
import 'package:projeto_mini_ifood/models/cart_item_model.dart';
import 'package:projeto_mini_ifood/models/product_model.dart';

class CartController extends ChangeNotifier {
  final List<CartItemModel> _items = [];
  List<CartItemModel> get items => _items;

  void addProduct(ProductModel product, int quantity) {
    final index = _items.indexWhere((item) => item.product.id == product.id);
    if (index >= 0) {
      _items[index].quantity += quantity;
    } else {
      _items.add(CartItemModel(product: product, quantity: quantity));
    }
    notifyListeners();
  }

  void increment(CartItemModel item) {
    item.quantity++;
    notifyListeners();
  }

  void decrement(CartItemModel item) {
    if (item.quantity > 1) {
      item.quantity--;
    } else {
      _items.remove(item);
    }
    notifyListeners();
  }

  double get total => _items.fold(0, (sum, item) => sum + item.totalprice);

  int get totalItems => _items.fold(0, (sum, item) => sum + item.quantity);

  bool get isEmpty => _items.isEmpty;

  void finalizarOrder() {
    _items.clear();
    notifyListeners();
  }

  void clear() {
    _items.clear();
    notifyListeners();
  }
}
