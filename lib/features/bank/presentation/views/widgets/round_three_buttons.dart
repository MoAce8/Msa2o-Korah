import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:msa2o_korah/core/utils/functions.dart';
import 'package:msa2o_korah/core/widgets/app_button.dart';
import 'package:msa2o_korah/features/bank/data/models/round_model.dart';
import 'package:msa2o_korah/features/bank/presentation/view_models/questions_cubit/questions_cubit.dart';

class RoundThreeButtons extends StatelessWidget {
  const RoundThreeButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppButton(
          text: 'Round 5',
          function: () {
            if (BankQuestionsCubit.get(context).questions.length >= 72) {
              GoRouter.of(context).push(
                '/bankRoundPlay',
                extra: RoundModel.startRound(
                  roundNum: 5,
                  questions: BankQuestionsCubit.get(context).questions,
                ),
              );
            } else {
              showLimitDialog(context);
            }
          },
        ),
        const SizedBox(
          height: 40,
        ),
        AppButton(
          text: 'Round 6',
          function: () {
            if (BankQuestionsCubit.get(context).questions.length >= 72) {
              GoRouter.of(context).push(
                '/bankRoundPlay',
                extra: RoundModel.startRound(
                  roundNum: 6,
                  questions: BankQuestionsCubit.get(context).questions,
                ),
              );
            } else {
              showLimitDialog(context);
            }
          },
        ),
      ],
    );
  }
}
