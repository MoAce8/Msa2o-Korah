import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:msa2o_korah/core/utils/functions.dart';
import 'package:msa2o_korah/core/widgets/app_button.dart';
import 'package:msa2o_korah/features/bank/presentation/view_models/questions_cubit/questions_cubit.dart';

class SettingsBody extends StatelessWidget {
  const SettingsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            AppButton(
              text: 'Choose User',
              function: () {
                GoRouter.of(context).push('/login');
              },
            ),
            const SizedBox(
              height: 25,
            ),
            AppButton(
              text: 'Add Questions',
              function: () {
                GoRouter.of(context).push('/addQuestions');
              },
            ),
            const SizedBox(
              height: 25,
            ),
            BlocListener<BankQuestionsCubit, BankQuestionsState>(
              listener: (context, state) {
                if (state is BankQuestionsLoaded) {
                  showCustomDialog(
                    context,
                    title: 'Questions loaded',
                    content: 'الاسئلة جاهزة تقدر تلعب دلوقتي',
                  );
                }
              },
              child: AppButton(
                text: 'Load Questions',
                function: () {
                  BankQuestionsCubit.get(context).loadQuestion();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
