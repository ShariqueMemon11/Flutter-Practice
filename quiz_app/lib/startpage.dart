import 'package:flutter/material.dart';
import 'package:quiz_app/questions.screen.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
            color: const Color.fromARGB(141, 255, 255, 255),
          ),
          SizedBox(height: 50),
          const Text(
            "Learn Flutter the fun way!",
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: () {
              QuestionsScreen();
            },
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: const Icon(Icons.play_arrow, color: Colors.white),
            label: const Text("Start Quiz"),
          ),
        ],
      ),
    );
  }
}
