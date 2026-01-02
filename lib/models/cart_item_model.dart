import 'package:projeto_mini_ifood/models/product_model.dart';

class CartItemModel {
  final ProductModel product;
  int quantity;
  CartItemModel({required this.product, this.quantity = 1});

  double get totalprice => product.price * quantity;
}
