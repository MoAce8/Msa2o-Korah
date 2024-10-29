import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:msa2o_korah/features/bank/presentation/view_models/round_cubit/bank_round_cubit.dart';

class QuestionBlock extends StatelessWidget {
  const QuestionBlock({super.key});

  @override
  Widget build(BuildContext context) {
    print(BankRoundCubit.get(context).questions.length);
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      child: BlocBuilder<BankRoundCubit, BankRoundState>(
        builder: (context, state) {
          return Column(
            children: [
              Text(
                'السؤال ${BankRoundCubit.get(context).questionIndex}',
                style: const TextStyle(
                  fontSize: 22,
                  color: Colors.grey
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                BankRoundCubit.get(context)
                    .questions[BankRoundCubit.get(context).questionIndex-1]
                    .question,
                textAlign: TextAlign.right,
                style: const TextStyle(
                  fontSize: 22,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                BankRoundCubit.get(context)
                    .questions[BankRoundCubit.get(context).questionIndex-1]
                    .answer,
                style: const TextStyle(
                  fontSize: 22,
                  color: Colors.lightGreen
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
