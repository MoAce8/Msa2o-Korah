import 'package:flutter/material.dart';
import 'package:msa2o_korah/constants.dart';

class AnswerButtons extends StatelessWidget {
  const AnswerButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: screenWidth(context) * .44,
          child: ElevatedButton(
            style: buttonStyle(correct: false),
            onPressed: () {},
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.cancel_outlined,
                ),
                Text(
                  'غلط',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: screenWidth(context) * .44,
          child: ElevatedButton(
            style: buttonStyle(correct: true),
            onPressed: () {},
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'صح',
                  style: TextStyle(fontSize: 18),
                ),
                Icon(Icons.check_circle_outline),
              ],
            ),
          ),
        ),
      ],
    );
  }

  ButtonStyle buttonStyle({required bool correct}) {
    return ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 22,
      ),
      backgroundColor: correct? const Color(0xff17b431):Colors.redAccent[700],
      foregroundColor: Colors.white,
    );
  }
}
