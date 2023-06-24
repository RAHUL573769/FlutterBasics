import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientColor(),
      ),
    ),
  );
}

class GradientColor extends StatelessWidget {
  const GradientColor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          gradient:
              LinearGradient(colors: [Colors.purpleAccent, Colors.purple]),
        ),
        child: const TextWidget());
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Hello World", style: TextStyle(fontSize: 34)),
    );
  }
}
