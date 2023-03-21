import 'question_bank.dart';

class Quiz {
  int _score = 0;

  int _questionNumber = 0;

  List<QuestionBank> _questionBank = [
    QuestionBank(
        question: "What is the keyword used to define a class in Dart?",
        options: ["class", "interface", "struct", "type"],
        answer: "class"),
    QuestionBank(
        question:
            "Which access modifier is used to restrict class members to the same library?",
        options: ["public", "private", "protected", "no modifier"],
        answer: "no modifier"),
    QuestionBank(
        question:
            "Which method is automatically called when an object is created?",
        options: ["dispose()", "create()", "constructor()", "initialize()"],
        answer: "constructor()"),
    QuestionBank(
        question:
            "Which inheritance keyword is used to indicate that a class cannot be inherited?",
        options: ["final", "abstract", "static", "const"],
        answer: "final"),
    QuestionBank(
        question:
            "What is the keyword used to refer to the current instance of a class in Dart?",
        options: ["this", "super", "current", "self"],
        answer: "this"),
    QuestionBank(
        question: "What is the syntax for a named constructor in Dart?",
        options: [
          "ClassName()",
          "ClassName.named()",
          "ClassName.constructor()",
          "new ClassName()"
        ],
        answer: "ClassName.named()"),
    QuestionBank(
        question: "What is the keyword used to implement interfaces in Dart?",
        options: ["implements", "extends", "implements with", "extends with"],
        answer: "implements"),
    QuestionBank(
        question:
            "Which keyword is used to prevent a variable from being modified?",
        options: ["final", "const", "var", "let"],
        answer: "final"),
    QuestionBank(
        question: "Which keyword is used to create an abstract class in Dart?",
        options: ["abstract", "interface", "class", "extends"],
        answer: "abstract"),
    QuestionBank(
        question: "What is the syntax for a static method in Dart?",
        options: [
          "static methodName()",
          "methodName()",
          "void methodName()",
          "public static methodName()"
        ],
        answer: "static methodName()"),
    QuestionBank(
        question:
            "Which keyword is used to create a new instance of a class in Dart?",
        options: ["new", "create", "instance", "alloc"],
        answer: "new"),
    QuestionBank(
        question:
            "Which method is used to compare two objects for equality in Dart?",
        options: ["==", "=", "===", "equals"],
        answer: "=="),
    QuestionBank(
        question: "Which type of variable is used to store a function in Dart?",
        options: ["int", "bool", "String", "Function"],
        answer: "Function"),
    QuestionBank(
        question: "What is the syntax for an abstract method in Dart?",
        options: [
          "void methodName()",
          "abstract void methodName()",
          "methodName() abstract",
          "abstract methodName()"
        ],
        answer: "abstract methodName()"),
    QuestionBank(
        question:
            "Which keyword is used to specify that a variable can be null in Dart?",
        options: ["nullable", "non-null", "maybe", "null"],
        answer: "null"),
    QuestionBank(
        question:
            "Which operator is used to access a property of an object in Dart?",
        options: [".", "-", ">", "<"],
        answer: "."),
    QuestionBank(
        question:
            "Which method is used to convert an object to a string in Dart?",
        options: ["toString()", "stringify()", "convert()", "asString()"],
        answer: "toString()"),
    QuestionBank(
        question: "Which method is used to add an element to a list in Dart?",
        options: ["add()", "push()", "insert()", "append()"],
        answer: "add()"),
    QuestionBank(
        question:
            "What is the keyword used to define a factory constructor in Dart?",
        options: ["factory", "constructor", "new", "class"],
        answer: "factory"),
    QuestionBank(
        question:
            "Which keyword is used to specify a default value for a named parameter in Dart?",
        options: ["default", "null", "void", "no keyword is needed"],
        answer: "default")
  ];

  String? getQuestion() => _questionBank[_questionNumber].question;

  List<String>? getOptions() => _questionBank[_questionNumber].options;

  String? getAnswer() => _questionBank[_questionNumber].answer;

  void checkAnswer(int userProvidedOption) {
    String userProvidedAnswer = '';
    List<String>? options = getOptions();
    for (int i = 0; i < 4; i++) {
      if (i+1 == userProvidedOption) {
        userProvidedAnswer = options![i];
      }
    }

    if (userProvidedAnswer == getAnswer()) _score++;
  }

  int getResult() => _score;

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) _questionNumber++;
  }

  int getTotalQuestionLength() => _questionBank.length;
}
