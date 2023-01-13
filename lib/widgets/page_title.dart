import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DecoratedBox(
        decoration: const BoxDecoration(
            border: Border(
                bottom: BorderSide(
          width: 6,
          color: Color.fromRGBO(35, 199, 215, 1),
        ))),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 34,
          ),
        ),
      ),
    );
  }
}
