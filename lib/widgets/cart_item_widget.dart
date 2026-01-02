import 'package:flutter/material.dart';
import 'package:projeto_mini_ifood/controllers/cart_controller.dart';
import 'package:projeto_mini_ifood/models/cart_item_model.dart';
import 'package:projeto_mini_ifood/theme/colors_theme.dart';
import 'package:provider/provider.dart';

class CartItemWidget extends StatelessWidget {
  final CartItemModel item;
  const CartItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final cart = context.read<CartController>();
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(12),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(12),
            child: Image.network(
              item.product.imageUrl,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.product.name,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "R\$ ${item.totalprice.toStringAsFixed(2).replaceAll('.', ',')}",
                    style: TextStyle(color: AppColorsTheme.primaryColor),
                  ),
                ],
              ),
            ),
          ),

          Row(
            children: [
              IconButton(
                onPressed: () => cart.decrement(item),
                icon: Icon(Icons.remove),
              ),
              Text(item.quantity.toString()),
              IconButton(
                onPressed: () => cart.increment(item),
                icon: Icon(Icons.add),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
