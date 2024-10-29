import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    this.background,
    this.textColor = Colors.black,
    this.isUperCase = false,
    required this.text,
    required this.function,
  });

  final Color? background;
  final Color textColor;
  final bool isUperCase;
  final String text;
  final VoidCallback function;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: background ?? Colors.white,
          padding: const EdgeInsets.all(12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: function,
        child: Center(
          child: Text(
            isUperCase ? text.toUpperCase() : text,
            style: TextStyle(
              color: textColor,
              fontSize: 20,
              fontWeight: FontWeight.w600
            ),
          ),
        ),
      ),
    );
  }
}
