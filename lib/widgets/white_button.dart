import 'package:flutter/material.dart';

class WhiteButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const WhiteButton({Key? key, required this.onPressed, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
            if (states.contains(MaterialState.disabled)) {
              return const Color.fromARGB(255, 255, 255, 255);
            }
            if (states.contains(MaterialState.pressed)) {
              return const Color.fromARGB(255, 216, 216, 216);
            }
            return const Color.fromARGB(255, 255, 255, 255);
          }),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
          ),
          side: MaterialStateProperty.all(
            const BorderSide(
              width: 1,
               color: Color.fromRGBO(35, 199, 215, 1)
            )
          ),
          foregroundColor: MaterialStateProperty.all(
            Color.fromARGB(255, 43, 43, 43),
          ),
          textStyle: MaterialStateProperty.all(
            const TextStyle(
              color: Colors.black,
              fontSize: 20,
            )
          ),
          minimumSize: MaterialStateProperty.all(const Size(170, 40))),
      child: Text(text),
    );
  }
}
