import 'package:flutter/material.dart';

class NameTextField extends StatelessWidget {
  const NameTextField({Key? key, required this.textController})
      : super(key: key);

  final TextEditingController textController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      width: MediaQuery.of(context).size.width * 0.7,
      height: 40,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(
              color: const Color.fromRGBO(35, 199, 215, 1), width: 1)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.account_circle_rounded,
            color: Colors.black,
          ),
          Expanded(
              child: TextField(
            controller: textController,
            decoration: const InputDecoration(
              hintText: 'Digite o seu nome',
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 10),
              isDense:
                  true, //para manter alinhado no centro ao adicionar o padding
            ),
          )),
        ],
      ),
    );
  }
}
