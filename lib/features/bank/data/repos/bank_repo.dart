import 'package:msa2o_korah/features/bank/data/models/bank_question_model.dart';

abstract class BankRepo {
  Future uploadQuestion({required String question, required String answer});
  Future<List<BankQuestionModel>> loadQuestions();

}
