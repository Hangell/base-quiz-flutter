import 'package:flutter/material.dart';

class QuestionBox extends StatelessWidget {
  final _index;
  final _questions;
  final Function nextQuestion;

  QuestionBox(this._index, this._questions, this.nextQuestion);

  @override
  Widget build(BuildContext contex) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Text(
                'Selecione a afirmação correta',
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Flexible(
              child: ElevatedButton(
                onPressed: () =>
                    this.nextQuestion(_questions[_index][_index][0].value),
                child: Text(_questions[_index][_index][0].question),
              ),
            )
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Text(
                '',
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Flexible(
              child: ElevatedButton(
                onPressed: () =>
                    this.nextQuestion(_questions[_index][_index][1].value),
                child: Text(_questions[_index][_index][1].question),
              ),
            )
          ],
        ),
      ],
    );
  }
}
