import 'package:flutter/material.dart';
import 'question.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Quizepage(),
          ),
        ),
      ),
    );
  }
}

class Quizepage extends StatefulWidget {
  @override
  _QuizepageState createState() => _QuizepageState();
}

class _QuizepageState extends State<Quizepage> {
  List<Icon> scoreKeeper = [];

  List<Question> questionBank = [
    Question(q: 'Electrons are larger than molecules.', a: false),
    Question(q: 'The Atlantic Ocean is the biggest ocean on Earth.', a: true),
    Question(
        q: 'The chemical make up food often changes when you cook it.',
        a: true),
  ];

  int questionNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questionBank[questionNumber].questionText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                bool correctAnswer =
                    questionBank[questionNumber].questionAnswer;

                if (correctAnswer == true) {
                  print('user got it right');
                } else {
                  print('user got it wrong');
                }

                setState(() {
                  questionNumber++;
                });
                print(questionNumber);

                //The user picked true.
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                bool correctAnswer =
                    questionBank[questionNumber].questionAnswer;

                if (correctAnswer == false) {
                  print('user got it right');
                } else {
                  print('user got it wrong');
                }

                setState(() {
                  questionNumber++;
                });
                print(questionNumber);

                // The user pick flase
              },
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        )
      ],
    );
  }
}
//question1: 'Electrons are larger than molecules.', false,
//question2: 'The Atlantic Ocean is the biggest ocean on Earth.', true,
//question3: 'The chemical make up food often changes when you cook it.', true,
