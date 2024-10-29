import 'package:flutter/material.dart';
import 'package:msa2o_korah/features/bank/presentation/view_models/questions_cubit/questions_cubit.dart';

void showCustomDialog(
  BuildContext context, {
  required String title,
  String? content,
}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          title,
          textAlign: TextAlign.center,
        ),
        content: content != null
            ? Text(
                content,
                textAlign: TextAlign.center,
              )
            : null,
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

void showSnackBar(
  BuildContext context,
  String message,
) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
    ),
  );
}

showLimitDialog(context) {
  showCustomDialog(context,
      title: 'Not enough questions',
      content: 'you need at least 72 questions and you only have '
          '${BankQuestionsCubit.get(context).questions.length} '
          'go and add more');
}
