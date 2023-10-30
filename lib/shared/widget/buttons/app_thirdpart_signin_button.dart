import 'package:flutter/material.dart';

class AppThirdpartSigninButton extends StatelessWidget {
  final String image;
  final Function onTap;
  final String label;
  final Color backgroundColor;
  final Color labelColor;
  final double? height;
  final double? width;

  const AppThirdpartSigninButton({
    required this.image,
    required this.onTap,
    required this.label,
    this.backgroundColor = Colors.white,
    this.labelColor = Colors.black,
    this.height,
    this.width,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () => onTap(),
      icon: Image.asset(
        image,
        height: 24,
        width: 24,
      ),
      label: Text(
        label,
        style: TextStyle(color: labelColor),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        fixedSize: Size(width ?? 150, height ?? 40),
      ),
    );
  }
}
