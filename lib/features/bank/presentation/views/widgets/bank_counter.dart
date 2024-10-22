import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:msa2o_korah/core/widgets/app_small_button.dart';
import 'package:msa2o_korah/features/bank/presentation/view_models/score_cubit/score_cubit.dart';

class BankCounter extends StatelessWidget {
  const BankCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Counter value:',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              width: 50,
            ),
            BlocBuilder<ScoreCubit, ScoreState>(
              builder: (context, state) {
                return Text(
                  ScoreCubit.get(context).counterValue.toString(),
                  style: const TextStyle(fontSize: 24),
                );
              },
            ),
          ],
        ),
        const SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AppSmallButton(
              text: 'Bank',
              background: Colors.teal[600],
              function: () {
                ScoreCubit.get(context).bankScore();
              },
            ),
            const Text(
              'Bank value:',
              style: TextStyle(fontSize: 20),
            ),
            BlocBuilder<ScoreCubit, ScoreState>(
              builder: (context, state) {
                return Text(
                  ScoreCubit.get(context).bankValue.toString(),
                  style: const TextStyle(fontSize: 24),
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}
