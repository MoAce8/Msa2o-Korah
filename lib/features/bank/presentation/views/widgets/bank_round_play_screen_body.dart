import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:msa2o_korah/core/widgets/app_button.dart';
import 'package:msa2o_korah/features/bank/presentation/view_models/round_cubit/bank_round_cubit.dart';
import 'package:msa2o_korah/features/bank/presentation/view_models/score_cubit/score_cubit.dart';
import 'package:msa2o_korah/features/bank/presentation/views/widgets/custom_timer.dart';
import 'package:msa2o_korah/features/bank/presentation/views/widgets/play_body.dart';
import 'package:msa2o_korah/features/bank/presentation/views/widgets/timer_buttons.dart';
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
              TimerButtons(
                controller: countdownController,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Round ${BankRoundCubit.get(context).roundNumber}',
                style: const TextStyle(fontSize: 26),
              ),
              const SizedBox(
                height: 15,
              ),
              BlocBuilder<BankRoundCubit, BankRoundState>(
                builder: (context, state) {
                  if (BankRoundCubit.get(context).questionIndex < 12) {
                    return const PlayBody();
                  } else {
                    return AppButton(
                      text: 'ارجع لباقي الراوندات',
                      function: () {
                        ScoreCubit.get(context).addRoundScore(
                          roundNum: BankRoundCubit.get(context).roundNumber,
                        );
                        Navigator.pop(context);
                      },
                    );
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
