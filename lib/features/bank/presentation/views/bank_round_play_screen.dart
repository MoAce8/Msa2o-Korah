import 'package:flutter/material.dart';
import 'package:msa2o_korah/features/bank/data/models/round_model.dart';
import 'package:msa2o_korah/features/bank/presentation/views/widgets/bank_round_play_screen_body.dart';

class BankRoundPlayScreen extends StatelessWidget {
  const BankRoundPlayScreen({super.key, required this.roundModel});

  final RoundModel roundModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BankRoundPlayScreenBody(
        roundModel: roundModel,
      ),
    );
  }
}
