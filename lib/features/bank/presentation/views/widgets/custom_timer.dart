import 'package:flutter/material.dart';
import 'package:msa2o_korah/core/utils/functions.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';

class CustomTimer extends StatelessWidget {
  const CustomTimer({super.key, required this.controller});

  final CountdownController controller;

  @override
  Widget build(BuildContext context) {
    return Countdown(
      seconds: 120,
      build: (context, time) => Text(
        time.round().toString(),
        style: const TextStyle(
          fontSize: 80,
        ),
      ),
      controller: controller,
      onFinished: (){
        showCustomDialog(context, title: 'وقتك خلص');
      },
    );
  }
}
