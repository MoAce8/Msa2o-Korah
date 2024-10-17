import 'package:flutter/material.dart';
import 'package:msa2o_korah/core/widgets/app_small_button.dart';
import 'package:msa2o_korah/features/bank/presentation/widgets/custom_timer.dart';
import 'package:msa2o_korah/features/bank/presentation/widgets/answer_buttons.dart';
import 'package:msa2o_korah/features/bank/presentation/widgets/question_block.dart';
import 'package:timer_count_down/timer_controller.dart';

class BankRoundPlayScreenBody extends StatefulWidget {
  const BankRoundPlayScreenBody({super.key});

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AppSmallButton(
                    text: 'Start',
                    function: () => countdownController.start(),
                  ),
                  AppSmallButton(
                    text: 'Stop',
                    function: () => countdownController.pause(),
                  ),
                  AppSmallButton(
                    text: 'Reset',
                    function: () => countdownController.restart(),
                  ),
                ],
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
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Counter value:',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    '0',
                    style: TextStyle(fontSize: 24),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AppSmallButton(
                    text: 'Bank',
                    background: Colors.teal[600],
                    function: () {},
                  ),
                  Text(
                    'Bank value:',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    '0',
                    style: TextStyle(fontSize: 24),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
