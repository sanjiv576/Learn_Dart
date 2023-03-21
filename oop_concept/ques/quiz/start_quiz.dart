import 'dart:io';
import 'quiz.dart';

class StartQuiz {
  Quiz quiz = Quiz();

  _showOptions() {
    List<String>? option = quiz.getOptions();
    for (int j = 0; j <= 3; j++) {
      print('${j + 1} : ${option![j]}');
    }
  }

  int _readUserAnswer() {
    print('Enter your options (1-4): ');
    // reads input as String
    String? userProvidedOptionString = stdin.readLineSync();
    int userProvidedOptionInt = int.parse(userProvidedOptionString!);

    return userProvidedOptionInt;
  }

  void beginQuiz() {
    // iterate each question
    for (int i = 0; i < quiz.getTotalQuestionLength(); i++) {
      // print question
      print('Question no. ${i + 1}: ${quiz.getQuestion()}');
      print('Options:');

// show options
      _showOptions();

// read user option
      int userAnswer = _readUserAnswer();

      // check user answer
      quiz.checkAnswer(userAnswer);

      // move to the next question
      quiz.nextQuestion();
    }

    print('Your result is ${quiz.getResult()} out of ${quiz.getTotalQuestionLength()+1}');
  }
}

void main() {
  StartQuiz startQuiz = StartQuiz();
  startQuiz.beginQuiz();

  //print('Start');
}
