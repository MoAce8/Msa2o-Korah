import 'package:flutter/material.dart';
import 'package:msa2o_korah/features/bank/data/models/round_model.dart';
import 'package:msa2o_korah/features/bank/presentation/view_models/round_cubit/bank_round_cubit.dart';
import 'package:msa2o_korah/features/bank/presentation/views/widgets/bank_round_play_screen_body.dart';

class BankRoundPlayScreen extends StatefulWidget {
  const BankRoundPlayScreen({super.key, required this.roundModel});

  final RoundModel roundModel;

  @override
  State<BankRoundPlayScreen> createState() => _BankRoundPlayScreenState();
}

class _BankRoundPlayScreenState extends State<BankRoundPlayScreen> {
  @override
  void initState() {
    BankRoundCubit.get(context).setRound(round: widget.roundModel);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BankRoundPlayScreenBody(),
    );
  }
}
