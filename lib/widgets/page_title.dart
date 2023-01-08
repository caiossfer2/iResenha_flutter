import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: DecoratedBox(
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
          width: 6,
          color: Color.fromRGBO(35, 199, 215, 1),
        ))),
        child: Text(
          'Bem vindo ao iResenha',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 34,
          ),
        ),
      ),
    );
  }
}
