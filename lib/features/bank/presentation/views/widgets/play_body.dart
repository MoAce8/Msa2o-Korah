import 'package:flutter/material.dart';
import 'package:msa2o_korah/features/bank/presentation/views/widgets/answer_buttons.dart';
import 'package:msa2o_korah/features/bank/presentation/views/widgets/bank_counter.dart';
import 'package:msa2o_korah/features/bank/presentation/views/widgets/question_block.dart';

class PlayBody extends StatelessWidget {
  const PlayBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        QuestionBlock(),
        SizedBox(
          height: 30,
        ),
        AnswerButtons(),
        SizedBox(
          height: 25,
        ),
        BankCounter(),
      ],
    );
  }
}
