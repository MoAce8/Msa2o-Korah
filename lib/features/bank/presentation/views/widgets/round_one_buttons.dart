import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:msa2o_korah/core/utils/functions.dart';
import 'package:msa2o_korah/core/widgets/app_button.dart';
import 'package:msa2o_korah/features/bank/data/models/round_model.dart';
import 'package:msa2o_korah/features/bank/presentation/view_models/questions_cubit/questions_cubit.dart';

class RoundOneButtons extends StatefulWidget {
  const RoundOneButtons({super.key});

  @override
  State<RoundOneButtons> createState() => _RoundOneButtonsState();
}

class _RoundOneButtonsState extends State<RoundOneButtons> {
  bool firstRoundPlayed = false;
  bool secondRoundPlayed = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppButton(
          text: 'Round 1',
          background: firstRoundPlayed?Colors.grey.shade700:null,
          function: () {
            if (!firstRoundPlayed) {
              if (BankQuestionsCubit.get(context).questions.length >= 72) {
                GoRouter.of(context).push(
                  '/bankRoundPlay',
                  extra: RoundModel.startRound(
                    roundNum: 1,
                    questions: BankQuestionsCubit.get(context).questions,
                  ),
                );
              } else {
                showLimitDialog(context);
              }
              setState(() {
                firstRoundPlayed = true;
              });
            }
          },
        ),
        const SizedBox(
          height: 40,
        ),
        AppButton(
          text: 'Round 2',
          background: secondRoundPlayed?Colors.grey.shade700:null,
          function: () {
            if (!secondRoundPlayed) {
              if (BankQuestionsCubit.get(context).questions.length >= 72) {
                GoRouter.of(context).push(
                  '/bankRoundPlay',
                  extra: RoundModel.startRound(
                    roundNum: 2,
                    questions: BankQuestionsCubit.get(context).questions,
                  ),
                );
              } else {
                showLimitDialog(context);
              }
              setState(() {
                secondRoundPlayed = true;
              });
            }
          },
        ),
      ],
    );
  }
}
