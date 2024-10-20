import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:msa2o_korah/features/bank/presentation/views/widgets/bank_rounds_screen_body.dart';

class BankRoundsScreen extends StatelessWidget {
  const BankRoundsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bank',
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              GoRouter.of(context).push('/settings');
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: const BankRoundsScreenBody(),
    );
  }
}
