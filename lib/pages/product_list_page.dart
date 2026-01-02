import 'package:flutter/material.dart';
import 'package:projeto_mini_ifood/mock/mock_products.dart';
import 'package:projeto_mini_ifood/models/product_model.dart';
import 'package:projeto_mini_ifood/pages/cart_page.dart';
import 'package:projeto_mini_ifood/theme/colors_theme.dart';
import 'package:projeto_mini_ifood/widgets/custom_drawer_widget.dart';
import 'package:projeto_mini_ifood/widgets/product_card_widget.dart';

class ProductListPage extends StatefulWidget {
  const ProductListPage({super.key});

  @override
  State<ProductListPage> createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  ProductCategory? selectCategory;
  @override
  Widget build(BuildContext context) {
    final filtroProducts = selectCategory == null
        ? mockProducts
        : mockProducts.where((p) => p.category == selectCategory).toList();
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColorsTheme.textColor),
        backgroundColor: AppColorsTheme.secondaryColor,
        elevation: 3,
        centerTitle: true,
        title: Text(
          "Lista de Produtos",
          style: TextStyle(color: AppColorsTheme.textColor),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => CartPage()),
              );
            },
            icon: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      drawer: CustomDrawerWidget(),
      body: Column(
        children: [
          _buildCategorySelector(),
          Expanded(
            child: ListView.builder(
              itemCount: filtroProducts.length,
              itemBuilder: (context, index) {
                final product = filtroProducts[index];
                return ProductCard(product: product);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategorySelector() {
    return SizedBox(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 12),
        children: [
          _categoryChip("Pratos", ProductCategory.pratos),
          _categoryChip("Doces", ProductCategory.doces),
          _categoryChip("Sobremesas", ProductCategory.sobremesa),
          _categoryChip("Lanches", ProductCategory.lanches),
        ],
      ),
    );
  }

  Widget _categoryChip(String label, ProductCategory category) {
    final selected = selectCategory == category;
    return Padding(
      padding: EdgeInsetsGeometry.only(right: 8),
      child: ChoiceChip(
        label: Text(label),
        selected: selected,
        selectedColor: AppColorsTheme.primaryColor,
        labelStyle: TextStyle(
          color: selected ? Colors.white : Colors.black,
          fontWeight: FontWeight.w600,
        ),
        onSelected: (_) {
          setState(() {
            selectCategory = category;
          });
        },
      ),
    );
  }
}
