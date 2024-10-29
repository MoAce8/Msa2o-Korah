import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'score_state.dart';

class ScoreCubit extends Cubit<ScoreState> {
  ScoreCubit() : super(ScoreInitial());

  static ScoreCubit get(context) => BlocProvider.of<ScoreCubit>(context);

  int counterValue = 0;
  int bankValue = 0;
  int teamOneScore = 0;
  int teamTwoScore = 0;

  counterIncrease() {
    if (counterValue == 0) {
      counterValue = 1;
    } else if (counterValue == 1) {
      counterValue = 4;
    } else {
      counterValue *= 2;
    }
    emit(ScoreCounterIncreased());
  }

  counterReset() {
    counterValue = 0;
    emit(ScoreCounterReset());
  }

  bankScore() {
    bankValue += counterValue;
    counterValue = 0;
    emit(ScoreBanked());
  }

  addRoundScore({required int roundNum}) {

    if (roundNum % 2 != 0) {
      teamOneScore += bankValue;
    } else {
      teamTwoScore += bankValue;
    }

    bankValue = 0;
    counterValue = 0;
    emit(ScoreAdded());
  }

  teamsReset(){
    teamOneScore = 0;
    teamTwoScore = 0;
    emit(ScoreReset());
  }
}
