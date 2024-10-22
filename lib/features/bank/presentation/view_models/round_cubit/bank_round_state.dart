part of 'bank_round_cubit.dart';

@immutable
abstract class BankRoundState {}

class BankRoundInitial extends BankRoundState {}
class BankRoundLoaded extends BankRoundState {}
class BankRoundIndexChanged extends BankRoundState {}
