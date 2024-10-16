import 'package:flutter/material.dart';
import 'package:msa2o_korah/core/widgets/app_button.dart';
import 'package:msa2o_korah/features/bank/presentation/widgets/team_total_score_card.dart';

class BankRoundsScreenBody extends StatelessWidget {
  const BankRoundsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TeamTotalScoreCard(
                text: 'Team 1 bank: 12',
              ),
              TeamTotalScoreCard(
                text: 'Team 2 bank: 8',
              ),
            ],
          ),
          AppButton(
            text: 'Round 1',
            function: () {},
          ),
          AppButton(
            text: 'Round 2',
            function: () {},
          ),
          AppButton(
            text: 'Round 3',
            function: () {},
          ),
          AppButton(
            text: 'Round 4',
            function: () {},
          ),
          AppButton(
            text: 'Round 5',
            function: () {},
          ),
          AppButton(
            text: 'Round 6',
            function: () {},
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
