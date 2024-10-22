import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:msa2o_korah/features/bank/data/models/bank_question_model.dart';
import 'package:msa2o_korah/features/bank/data/models/round_model.dart';

part 'bank_round_state.dart';

class BankRoundCubit extends Cubit<BankRoundState> {
  BankRoundCubit() : super(BankRoundInitial());

  static BankRoundCubit get(context) =>
      BlocProvider.of<BankRoundCubit>(context);

  int questionIndex = 1;
  List<BankQuestionModel> questions = [];
  late final int roundNumber;

  setRound({required RoundModel round}){
    questions = round.questions;
    roundNumber = round.roundNumber;
    emit(BankRoundLoaded());
  }

  indexIncrease(){
    questionIndex++;
    emit(BankRoundIndexChanged());
  }
}
