import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:msa2o_korah/core/utils/functions.dart';
import 'package:msa2o_korah/core/widgets/app_button.dart';
import 'package:msa2o_korah/core/widgets/custom_text_form_field.dart';
import 'package:msa2o_korah/features/bank/presentation/view_models/questions_cubit/questions_cubit.dart';

class AddQuestionsScreenBody extends StatefulWidget {
  const AddQuestionsScreenBody({super.key});

  @override
  State<AddQuestionsScreenBody> createState() => _AddQuestionsScreenBodyState();
}

class _AddQuestionsScreenBodyState extends State<AddQuestionsScreenBody> {
  TextEditingController qController = TextEditingController();
  TextEditingController aController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Enter Question',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              AppTextFormField(
                label: 'Question',
                controller: qController,
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Enter Answer',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              AppTextFormField(
                label: 'Answer',
                controller: aController,
              ),
              const SizedBox(
                height: 60,
              ),
              BlocListener<BankQuestionsCubit, BankQuestionsState>(
                listener: (context, state) {
                  if (state is BankQuestionsUploaded) {
                    qController.clear();
                    aController.clear();
                    showSnackBar(context, 'Message uploaded');
                  }
                },
                child: AppButton(
                  text: 'Add',
                  function: () async {
                    if (formKey.currentState!.validate()) {
                      BankQuestionsCubit.get(context).uploadQuestion(
                        question: qController.text,
                        answer: aController.text,
                      );
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
