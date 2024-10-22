import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:msa2o_korah/core/utils/functions.dart';
import 'package:msa2o_korah/core/widgets/app_button.dart';
import 'package:msa2o_korah/features/bank/data/models/round_model.dart';
import 'package:msa2o_korah/features/bank/presentation/view_models/questions_cubit/questions_cubit.dart';
import 'package:msa2o_korah/features/bank/presentation/view_models/score_cubit/score_cubit.dart';
import 'package:msa2o_korah/features/bank/presentation/views/widgets/team_total_score_card.dart';

class BankRoundsScreenBody extends StatelessWidget {
  const BankRoundsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
          AppButton(
            text: 'Round 1',
            function: () {
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
            },
          ),
          AppButton(
            text: 'Round 2',
            function: () {
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
            },
          ),
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
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }

  showLimitDialog(context) {
    showCustomDialog(context,
        title: 'Not enough questions',
        content: 'you need at least 72 questions and you only have '
            '${BankQuestionsCubit.get(context).questions.length} '
            'go and add more');
  }
}
