import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:msa2o_korah/core/utils/functions.dart';
import 'package:msa2o_korah/core/widgets/app_button.dart';
import 'package:msa2o_korah/features/bank/data/models/round_model.dart';
import 'package:msa2o_korah/features/bank/presentation/view_models/questions_cubit/questions_cubit.dart';

class RoundTwoButtons extends StatelessWidget {
  const RoundTwoButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppButton(
          text: 'Round 3',
          function: () {
            if (BankQuestionsCubit.get(context).questions.length >= 72) {
              GoRouter.of(context).push(
                '/bankRoundPlay',
                extra: RoundModel.startRound(
                  roundNum: 3,
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
          text: 'Round 4',
          function: () {
            if (BankQuestionsCubit.get(context).questions.length >= 72) {
              GoRouter.of(context).push(
                '/bankRoundPlay',
                extra: RoundModel.startRound(
                  roundNum: 4,
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
