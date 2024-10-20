import 'package:flutter/material.dart';

class TeamTotalScoreCard extends StatelessWidget {
  const TeamTotalScoreCard({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.black,
      ),
      child:  Text(
        text,
        style: const TextStyle(
          fontSize: 16
        ),
      ),
    );
  }
}
