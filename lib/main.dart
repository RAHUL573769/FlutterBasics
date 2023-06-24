import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientColor(Colors.purple, Colors.blue),
      ),
    ),
  );
}

class GradientColor extends StatelessWidget {
  const GradientColor(this.color1, this.color2, {super.key});
  final Color color1;
  final Color color2;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [Colors.purpleAccent, Colors.blue]),
      ),
      // child: TextWidget('Hello '),
      child: Center(
        child: Column(
          children: [
            TextWidget('Hello '),
            const ImageWidget(),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () => {},
              child: Text("Roll Dice"),
            )
          ],
        ),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  TextWidget(this.text, {super.key});
  String text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: const TextStyle(fontSize: 34),
      ),
    );
  }
}

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'images/dice-images/dice-1.png',
      width: 200,
    );
  }
}
