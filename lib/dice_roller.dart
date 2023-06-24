import 'package:flutter/material.dart';

class DiceRpller extends StatefulWidget {
  const DiceRpller({Key? key}) : super(key: key);

  @override
  State<DiceRpller> createState() => _DiceRpllerState();
}

class _DiceRpllerState extends State<DiceRpller> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextWidget('Hello '),
        const ImageWidget(),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: () => {},
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(20),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text("Roll Dice"),
        )
      ],
    ));
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
