import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      height: 50,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Row(
        children: [
          const Icon(
            Icons.chevron_right,
            size: 30,
          ),
          Expanded(
            child: TextField(
              controller: controller,
              decoration: const InputDecoration(
                hintText: 'Digite o número de participantes',
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(left: 10),
                isDense: true,
              ),
            ),
          )
        ],
      ),
    );
  }
}
