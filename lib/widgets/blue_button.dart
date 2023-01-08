import 'package:flutter/material.dart';

class BlueButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const BlueButton({Key? key, required this.onPressed, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
            if (states.contains(MaterialState.disabled)) {
              return const Color.fromRGBO(35, 199, 215, 1);
            }
            if (states.contains(MaterialState.pressed)) {
              return const Color.fromARGB(255, 31, 158, 170);
            }
            return const Color.fromRGBO(35, 199, 215, 1);
          }),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
          textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 20)),
          minimumSize: MaterialStateProperty.all(const Size(170, 40))),
      child: Text(text),
    );
  }
}
