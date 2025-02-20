import 'package:flutter/material.dart';

// ignore: camel_case_types
class Style_text extends StatelessWidget {
  const Style_text(this.text, {super.key});
  final String text;
  @override
  Widget build(ctx) {
    return Text(text, style: TextStyle(color: Colors.white, fontSize: 28));
  }
}
