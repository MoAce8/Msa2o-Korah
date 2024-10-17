import 'package:flutter/material.dart';
import 'package:msa2o_korah/core/widgets/app_small_button.dart';
import 'package:timer_count_down/timer_controller.dart';

class TimerButtons extends StatelessWidget {
  const TimerButtons({super.key, required this.controller});

  final CountdownController controller;

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        AppSmallButton(
          text: 'Start',
          function: () => controller.start(),
        ),
        AppSmallButton(
          text: 'Stop',
          function: () => controller.pause(),
        ),
        AppSmallButton(
          text: 'Reset',
          function: () => controller.restart(),
        ),
      ],
    );
  }
}
