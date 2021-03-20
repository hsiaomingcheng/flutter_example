class Question {
  String questionText;
  bool questionAnswer;

  //三種寫法都可以，1是從2改良減短過來的

  //1.
  Question(this.questionText, this.questionAnswer);

  //2.
  // Question(String q, bool a) {
  //   questionText = q;
  //   questionAnswer = a;
  // }

  //3.
  //如果寫了可選參數，在使用的時候就要加上q跟a
  // Question({String q, bool a}) {
  //   questionText = q;
  //   questionAnswer = a;
  // }

  // Question(q: 'A slug\'s blood is green.', a: true),
}
