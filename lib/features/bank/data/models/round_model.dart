import 'package:msa2o_korah/features/bank/data/models/bank_question_model.dart';

class RoundModel {
  final int roundNumber;
  final List<BankQuestionModel> questions;

  RoundModel({
    required this.roundNumber,
    required this.questions,
  });

  factory RoundModel.startRound({
    required int roundNum,
    required List<BankQuestionModel> questions,
  }) {
    int qNum = 12 * (roundNum - 1);
    List<BankQuestionModel> q = [];
    for (int i = qNum; i < qNum + 12; i++) {
      q.add(questions[i]);
    }
    return RoundModel(
      roundNumber: roundNum,
      questions: q,
    );
  }
}
