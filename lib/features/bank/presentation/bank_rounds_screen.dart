import 'package:flutter/material.dart';
import 'package:msa2o_korah/constants.dart';
import 'package:msa2o_korah/features/bank/presentation/widgets/bank_rounds_screen_body.dart';

class BankRoundsScreen extends StatelessWidget {
  const BankRoundsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bank',),
        centerTitle: true,
        backgroundColor: kPrimaryColor,
      ),
      body: const BankRoundsScreenBody(),
    );
  }
}
