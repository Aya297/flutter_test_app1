import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void ansQues() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    // ignore: avoid_print
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What is your favorite color?',
        'answers': ['Black', 'Red', 'Green'],
      },
      {
        'questionText': 'What is your favorite animal?',
        'answers': ['Rabbit', 'Snake', 'Lion'],
      },
      {
        'questionText': 'What is your favorite person?',
        'answers': ['Max', 'Steve', 'Eddie'],
      },
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: Column(
          children: [
            Question(
              questions[questionIndex]['questionText'] as String
            ),
            ...(questions[questionIndex]['answers'] as List<String>)
               .map((answer) {
              return Answer(ansQues, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
