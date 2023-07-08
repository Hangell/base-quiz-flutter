import 'package:flutter/material.dart';

import './models/question.dart';
import './question_box.dart';
import './result.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<Home> {
  final _questions = [
    {
      0: [
        Question('A seleção brasileira de futebol possui 5 títulos mundias', 1),
        Question('A seleção brasileira de futebol possui 6 títulos mundias', 0),
      ]
    },
    {
      1: [
        Question(
            'Não conseguimos criar aplicativos multiplataforma com Flutter', 0),
        Question('Conseguimos criar aplicativos multiplataforma com Flutter', 1)
      ]
    },
    {
      2: [
        Question('O Brasil é composto por 26 estados e um DF', 1),
        Question('O Brasil é composto por 24 estados e um DF', 0)
      ]
    },
    {
      3: [
        Question(
            'Dart é uma linguagem de programação desenvolvida pelo Facebook',
            0),
        Question(
            'Dart é uma linguagem de programação desenvolvida pelo Google', 1),
      ]
    }
  ];
  int result = 0;
  int _index = 0;

  void nextQuestion(int value) {
    setState(() {
      _index++;
      result = result + value;
    });
  }

  void reset() {
    setState(() {
      _index = 0;
      result = 0;
    });
  }

  String getMessage() {
    if (result < 2) {
      return 'Oops... tente novamente.';
    } else if (result < 3) {
      return 'Você está quase lá';
    }

    return 'Parabéns! você sabe tudo!';
  }

  String _getTitle() {
    if (_index < 4) {
      return 'Questão ${_index + 1}';
    } else {
      return 'Resultado';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(_getTitle()),
          ),
        ),
        body: _index < _questions.length
            ? QuestionBox(_index, _questions, nextQuestion)
            : Result(getMessage(), this.reset));
  }
}
