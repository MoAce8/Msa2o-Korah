class BankQuestionModel {
  final String question;
  final String answer;

  BankQuestionModel({
    required this.question,
    required this.answer,
  });

  factory BankQuestionModel.fromJson(json) {
    return BankQuestionModel(
      question: json['question'],
      answer: json['answer'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'question': question,
      'answer': answer,
    };
  }
}
