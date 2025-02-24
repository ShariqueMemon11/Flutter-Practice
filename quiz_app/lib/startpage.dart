import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset("assets/images/quiz-logo.png", width: 300),
          SizedBox(height: 20),
          const Text(
            "Lear Flutter the fun way!",
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/quiz");
            },
            child: Text("-> Start Quiz"),
          ),
        ],
      ),
    );
  }
}
