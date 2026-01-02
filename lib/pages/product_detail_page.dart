import 'package:flutter/material.dart';
import 'package:projeto_mini_ifood/controllers/cart_controller.dart';
import 'package:projeto_mini_ifood/models/product_model.dart';
import 'package:projeto_mini_ifood/theme/colors_theme.dart';
import 'package:projeto_mini_ifood/widgets/quantity_button.dart';
import 'package:provider/provider.dart';

class ProductDetailPage extends StatefulWidget {
  final ProductModel product;
  const ProductDetailPage({super.key, required this.product});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  int quantity = 1;

  void increment() {
    setState(() {
      quantity++;
    });
  }

  void decrement() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
    }
  }

  double get totalPrice => widget.product.price * quantity;

  @override
  Widget build(BuildContext context) {
    final product = widget.product;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColorsTheme.textColor),
        backgroundColor: AppColorsTheme.secondaryColor,
        elevation: 3,
        centerTitle: true,
        title: Text(
          "Detalhes: ${product.name}",
          style: TextStyle(color: AppColorsTheme.textColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: widget.product.id,
              child: Image.network(
                widget.product.imageUrl,
                height: 260,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "R\$ ${totalPrice.toStringAsFixed(2).replaceAll('.', ',')}",
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColorsTheme.primaryColor,
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      QuantityButton(icon: Icons.remove, onPressed: decrement),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18),
                        child: Text(
                          quantity.toString(),
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      QuantityButton(icon: Icons.add, onPressed: increment),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: AppColorsTheme.surfaceColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      product.descricao,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size.fromHeight(50),
            backgroundColor: AppColorsTheme.primaryColor,
          ),
          onPressed: () {
            context.read<CartController>().addProduct(widget.product, quantity);
            Navigator.pop(context);
          },
          child: Text(
            "Adicionar $quantity - R\$ ${totalPrice.toStringAsFixed(2).replaceAll('.', ',')}",
            style: TextStyle(fontSize: 18, color: AppColorsTheme.textColor),
          ),
        ),
      ),
    );
  }
}
