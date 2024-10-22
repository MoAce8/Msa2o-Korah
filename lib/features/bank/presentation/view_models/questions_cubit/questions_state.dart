part of 'questions_cubit.dart';

@immutable
abstract class BankQuestionsState {}

class BankQuestionsInitial extends BankQuestionsState {}

class BankQuestionsLoading extends BankQuestionsState {}

class BankQuestionsLoaded extends BankQuestionsState {}

class BankQuestionsUploaded extends BankQuestionsState {}

class BankQuestionsFailure extends BankQuestionsState {
  final String errMessage;

  BankQuestionsFailure(this.errMessage);
}
