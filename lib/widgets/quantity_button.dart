import 'package:flutter/material.dart';
import 'package:projeto_mini_ifood/theme/colors_theme.dart';

class QuantityButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  const QuantityButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: ShapeDecoration(
        shape: CircleBorder(),
        color: AppColorsTheme.primaryColor,
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon, color: AppColorsTheme.textColor),
      ),
    );
  }
}
