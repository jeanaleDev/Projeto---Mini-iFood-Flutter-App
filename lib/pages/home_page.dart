import 'package:flutter/material.dart';
import 'package:projeto_mini_ifood/pages/product_list_page.dart';
import 'package:projeto_mini_ifood/theme/colors_theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,

            children: [
              Icon(
                Icons.fastfood,
                size: 80,
                color: AppColorsTheme.primaryColor,
              ),
              SizedBox(height: 16),
              Text(
                "Mini iFood",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                "Peça sua comida Favorita em poucos Toques!",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 32),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColorsTheme.primaryColor,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => ProductListPage()),
                  );
                },
                child: Text(
                  "Ver Cardápio",
                  style: TextStyle(color: AppColorsTheme.textColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
