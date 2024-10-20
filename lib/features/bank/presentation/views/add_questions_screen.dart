import 'package:flutter/material.dart';
import 'package:msa2o_korah/features/bank/presentation/views/widgets/add_questions_screen_body.dart';

class AddQuestionsScreen extends StatelessWidget {
  const AddQuestionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Bank questions'),
        centerTitle: true,
      ),
      body: const AddQuestionsScreenBody(),
    );
  }
}
