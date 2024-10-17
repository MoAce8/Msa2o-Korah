import 'package:flutter/material.dart';

void showCustomDialog(
  BuildContext context, {
  required String title,
  String? content,
}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title,textAlign: TextAlign.center,),
        content: content != null?Text(content):null,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close the dialog
            },
            child: const Text('OK'),
          ),
        ],
      );
    },
  );
}
