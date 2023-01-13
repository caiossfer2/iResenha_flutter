import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        //botao de voltar
        top: 5,
        left: 5,
        child: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Icon(Icons.arrow_back),
              SizedBox(
                width: 3,
              ),
              Text(
                'Voltar',
                style: TextStyle(fontSize: 16),
              )
            ],
          ),
        ));
  }
}
