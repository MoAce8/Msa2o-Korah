import 'package:flutter/material.dart';
import 'package:msa2o_korah/features/bank/data/models/round_model.dart';
import 'package:msa2o_korah/features/bank/presentation/views/widgets/answer_buttons.dart';
import 'package:msa2o_korah/features/bank/presentation/views/widgets/bank_counter.dart';
import 'package:msa2o_korah/features/bank/presentation/views/widgets/custom_timer.dart';
import 'package:msa2o_korah/features/bank/presentation/views/widgets/question_block.dart';
import 'package:msa2o_korah/features/bank/presentation/views/widgets/timer_buttons.dart';
import 'package:timer_count_down/timer_controller.dart';

class BankRoundPlayScreenBody extends StatefulWidget {
  const BankRoundPlayScreenBody({super.key, required this.roundModel});

  final RoundModel roundModel;

  @override
  State<BankRoundPlayScreenBody> createState() =>
      _BankRoundPlayScreenBodyState();
}

class _BankRoundPlayScreenBodyState extends State<BankRoundPlayScreenBody> {
  CountdownController countdownController = CountdownController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              CustomTimer(
                controller: countdownController,
              ),
              TimerButtons(
                controller: countdownController,
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Round 1',
                style: TextStyle(fontSize: 26),
              ),
              const SizedBox(
                height: 15,
              ),
              const QuestionBlock(),
              const SizedBox(
                height: 30,
              ),
              const AnswerButtons(),
              const SizedBox(
                height: 25,
              ),
              const BankCounter(),
            ],
          ),
        ),
      ),
    );
  }
}
