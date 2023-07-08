import 'package:flutter/material.dart';
import 'package:quiz_app/models/question.dart';

class QuestionBox extends StatelessWidget {
  final int _index;
  final List<List<Question>> _questions;

  QuestionBox(this._index, this._questions);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text('Selecione a afirmação correta'),
        SizedBox(height: 10),
        ElevatedButton(
          style: ElevatedButton.styleFrom(onSurface: Colors.red),
          onPressed: () {
            // Handle button press
          },
          child: Text(_questions[_index][0].question),
        ),
        SizedBox(height: 10),
        ElevatedButton(
          style: ElevatedButton.styleFrom(onSurface: Colors.red),
          onPressed: () {
            // Handle button press
          },
          child: Text(_questions[_index][1].question),
        ),
      ],
    );
  }
}
