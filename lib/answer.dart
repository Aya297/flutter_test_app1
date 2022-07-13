import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  // ignore: use_key_in_widget_constructors
  const Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          onPrimary: Colors.black,
          primary: Colors.orange,
        ),
        onPressed: selectHandler(),
        child: const Text('Answer 1'),
      ),
    );
  }
}
