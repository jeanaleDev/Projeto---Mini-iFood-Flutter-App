import 'package:flutter/material.dart';
import 'package:projeto_mini_ifood/controllers/cart_controller.dart';
import 'package:projeto_mini_ifood/pages/home_page.dart';
import 'package:projeto_mini_ifood/theme/colors_theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => CartController(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mini Ifood',
      theme: ThemeData(scaffoldBackgroundColor: AppColorsTheme.surfaceColor),
      home: HomePage(),
    );
  }
}
