import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question('python is the best programming language', true),
    Question('testing a software is not important', false),
    Question('Teresina is cold', false),
    Question('Brasil é o melhor país do mundo', true),
    Question('56 x 88 = 200546', false),
    Question('we will be free from covid next year', true),
    Question('frontend > backend', false),
    Question('flutter is easy', true),
    Question('every politician is honest', false),
    Question('5 + 5 = 10', true),
  ];

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
