import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage(this.switchScreen, {super.key});

  final void Function() switchScreen;

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
              switchScreen();
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
