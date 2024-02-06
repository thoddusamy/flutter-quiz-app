import 'package:flutter/material.dart';
import 'package:quiz_app/home_screen.dart';
import 'package:quiz_app/questions.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswer = [];
  var activeScreen = "home-screen";

  void choosenAnswer(String ans) {
    selectedAnswer.add(ans);

    if (selectedAnswer.length == questions.length) {
      setState(() {
        selectedAnswer = [];
        activeScreen = 'result-screen';
      });
    }
  }

  void changeScreen() {
    setState(() {
      activeScreen = "questions-screen";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: activeScreen == "home-screen"
              ? HomeScreen(changeScreen)
              : activeScreen == 'questions-screen'
                  ? QuestionsScreen(
                      onPressedAnswer: choosenAnswer,
                    )
                  : ResultScreen(selectedAnswers: selectedAnswer),
        ),
      ),
    );
  }
}
