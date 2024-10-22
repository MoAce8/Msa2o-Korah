part of 'score_cubit.dart';

@immutable
abstract class ScoreState {}

class ScoreInitial extends ScoreState {}

class ScoreCounterIncreased extends ScoreState {}

class ScoreCounterReset extends ScoreState {}

class ScoreBanked extends ScoreState {}

class ScoreAdded extends ScoreState {}
