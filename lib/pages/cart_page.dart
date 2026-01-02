import 'package:flutter/material.dart';
import 'package:projeto_mini_ifood/controllers/cart_controller.dart';
import 'package:projeto_mini_ifood/pages/order_sucess_page.dart';
import 'package:projeto_mini_ifood/theme/colors_theme.dart';
import 'package:projeto_mini_ifood/widgets/cart_item_widget.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<CartController>();
    return Scaffold(
      backgroundColor: AppColorsTheme.surfaceColor,
      appBar: AppBar(
        elevation: 3,
        iconTheme: IconThemeData(color: AppColorsTheme.textColor),

        centerTitle: true,
        backgroundColor: AppColorsTheme.secondaryColor,
        title: Text(
          "Carrinho",
          style: TextStyle(fontSize: 22, color: AppColorsTheme.surfaceColor),
        ),
      ),
      body: cart.items.isEmpty
          ? Center(
              child: Text(
                "Carrinho vazio!",
                style: TextStyle(
                  color: AppColorsTheme.secondaryColor,
                  fontSize: 16,
                ),
              ),
            )
          : ListView.builder(
              padding: EdgeInsets.all(16),
              itemCount: cart.items.length,
              itemBuilder: (context, index) {
                final shop = cart.items[index];
                return CartItemWidget(item: shop);
              },
            ),

      bottomNavigationBar: cart.items.isEmpty
          ? null
          : Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColorsTheme.secondaryColor,
                boxShadow: const [
                  BoxShadow(blurRadius: 6, color: Colors.black26),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total",
                        style: TextStyle(
                          fontSize: 18,
                          color: AppColorsTheme.textColor,
                        ),
                      ),
                      Text(
                        "R\$ ${cart.total.toStringAsFixed(2).replaceAll('.', ',')}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColorsTheme.primaryColor,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 12),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(48),
                      backgroundColor: AppColorsTheme.primaryColor,
                    ),
                    onPressed: () {
                      _showConfirmacao(context, cart);
                    },
                    child: const Text(
                      "Finalizar pedido",
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColorsTheme.textColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }

  void _showConfirmacao(BuildContext context, CartController cart) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text("Confirmar Pedido"),
        content: Text("Desaja confirmar Pedido?"),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Cancelar"),
          ),
          ElevatedButton(
            onPressed: () {
              cart.clear();
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (_) => OrderSucessPage()),
              );
            },
            child: Text("Confirmar"),
          ),
        ],
      ),
    );
  }
}
