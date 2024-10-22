import 'package:flutter/material.dart';
import 'package:msa2o_korah/core/utils/functions.dart';
import 'package:msa2o_korah/features/bank/presentation/view_models/round_cubit/bank_round_cubit.dart';
import 'package:msa2o_korah/features/bank/presentation/view_models/score_cubit/score_cubit.dart';
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
      onFinished: () {
        ScoreCubit.get(context).addRoundScore(
          roundNum: BankRoundCubit.get(context).roundNumber,
        );
        Navigator.pop(context);
        showCustomDialog(context, title: 'وقتك خلص');
      },
    );
  }
}
