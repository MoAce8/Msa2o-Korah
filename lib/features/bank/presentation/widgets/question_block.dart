import 'package:flutter/material.dart';

class QuestionBlock extends StatelessWidget {
  const QuestionBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      child: const Column(
        children: [
          Text(
            'السؤال 1',
            style: TextStyle(
              fontSize: 22,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'السؤال السؤال السؤال السؤال السؤال السؤال',
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 22,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'السؤال السؤال',
            style: TextStyle(
              fontSize: 22,
            ),
          ),
        ],
      ),
    );
  }
}
