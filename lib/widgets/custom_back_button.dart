import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding:const  EdgeInsets.only(left: 5, top: 5),
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
            ),
          )
        ]
    );
  }
}
