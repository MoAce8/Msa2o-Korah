import 'package:flutter/material.dart';

class AppSmallButton extends StatelessWidget {
  const AppSmallButton({
    super.key,
    this.background,
    this.isUperCase = false,
    required this.text,
    required this.function,
    this.textColor,
  });

  final Color? background;
  final Color? textColor;
  final bool isUperCase;
  final String text;
  final VoidCallback function;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: background,
        ),
        onPressed: function,
        child: Center(
          child: Text(
            isUperCase ? text.toUpperCase() : text,
            style: TextStyle(
              color: textColor ?? Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
