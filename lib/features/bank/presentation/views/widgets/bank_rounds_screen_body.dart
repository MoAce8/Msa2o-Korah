import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:msa2o_korah/features/bank/presentation/view_models/score_cubit/score_cubit.dart';
import 'package:msa2o_korah/features/bank/presentation/views/widgets/round_one_buttons.dart';
import 'package:msa2o_korah/features/bank/presentation/views/widgets/round_three_buttons.dart';
import 'package:msa2o_korah/features/bank/presentation/views/widgets/round_two_buttons.dart';
import 'package:msa2o_korah/features/bank/presentation/views/widgets/team_total_score_card.dart';

class BankRoundsScreenBody extends StatelessWidget {
  const BankRoundsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: SingleChildScrollView(
        child: Column(
          children: [
            BlocBuilder<ScoreCubit, ScoreState>(
              builder: (context, state) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TeamTotalScoreCard(
                      text:
                          'Team 1 bank: ${ScoreCubit.get(context).teamOneScore}',
                    ),
                    TeamTotalScoreCard(
                      text:
                          'Team 2 bank: ${ScoreCubit.get(context).teamTwoScore}',
                    ),
                  ],
                );
              },
            ),
            const SizedBox(
              height: 40,
            ),
            const RoundOneButtons(),
            const SizedBox(
              height: 40,
            ),
            const RoundTwoButtons(),
            const SizedBox(
              height: 40,
            ),
            const RoundThreeButtons(),

          ],
        ),
      ),
    );
  }
}
