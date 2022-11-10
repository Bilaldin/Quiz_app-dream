import '../../models/question_model.dart';

class QuestionsLocalData {
  int index = 0;
  List<QuestionModel> questionAnswers = [
    QuestionModel(questions: 'Kyrgyzstanda 5 oblast bar', answers: false),
    QuestionModel(questions: 'Osh Bishkeke karaiby?', answers: false),
    QuestionModel(questions: 'Abdulkadir 16 jashtaby?', answers: true),
    QuestionModel(questions: 'Oshto arka barby?', answers: true),
  ];
  String? suroonuAlipKel() {
    if (index < questionAnswers.length) {
      return questionAnswers[index].questions;
    }
    return 'Suroolor tugondu';
  }

  bool? jooptuAlipKel() {
    return questionAnswers[index].answers;
  }

  void suroonuOtkoz() {
    index++;
  }
}

QuestionsLocalData questionsLocalData = QuestionsLocalData();
