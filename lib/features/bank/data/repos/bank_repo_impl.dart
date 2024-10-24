import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:msa2o_korah/features/bank/data/models/bank_question_model.dart';
import 'package:msa2o_korah/features/bank/data/repos/bank_repo.dart';
import 'package:uuid/uuid.dart';

class BankRepoImpl extends BankRepo {

  final FirebaseFirestore _fireStore = FirebaseFirestore.instance;

  @override
  Future uploadQuestion(
      {required String question, required String answer}) async {
    BankQuestionModel newQuestion = BankQuestionModel(
      question: question,
      answer: answer,
    );
    String questionId = const Uuid().v1();
    await _fireStore
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('bank_questions')
        .doc(questionId)
        .set(newQuestion.toJson());
  }

  @override
  Future<List<BankQuestionModel>> loadQuestions() async {
    QuerySnapshot snapshot = await _fireStore
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('bank_questions')
        .get();
    List<BankQuestionModel> questions = snapshot.docs
        .map(
          (e) => BankQuestionModel.fromJson(e.data()),
        )
        .toList()..shuffle();

    return questions;
  }
}
