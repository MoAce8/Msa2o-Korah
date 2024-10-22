import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:msa2o_korah/features/bank/data/models/bank_question_model.dart';
import 'package:msa2o_korah/features/bank/data/repos/bank_repo.dart';

part 'questions_state.dart';

class BankQuestionsCubit extends Cubit<BankQuestionsState> {
  BankQuestionsCubit(this.bankRepo) : super(BankQuestionsInitial());

  static BankQuestionsCubit get(context) =>
      BlocProvider.of<BankQuestionsCubit>(context);

  final BankRepo bankRepo;
  List<BankQuestionModel> questions = [];

  uploadQuestion({
    required String question,
    required String answer,
  }) {
    emit(BankQuestionsLoading());
    try {
      bankRepo.uploadQuestion(question: question, answer: answer).then(
            (value) => emit(BankQuestionsUploaded()),
          );
    } catch (e) {
      emit(BankQuestionsFailure(e.toString()));
    }
  }

  loadQuestion() async {
    emit(BankQuestionsLoading());
    try {
      questions = await bankRepo.loadQuestions();
      emit(BankQuestionsLoaded());
    } catch (e) {
      emit(BankQuestionsFailure(e.toString()));
    }
  }
}
