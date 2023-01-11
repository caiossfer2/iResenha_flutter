import 'package:flutter/material.dart';

class MainContainer extends StatelessWidget {
  const MainContainer(
      {Key? key, required this.child, this.hasGoBackButton = false})
      : super(key: key);

  final Widget child;
  final bool hasGoBackButton;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: const Color.fromARGB(237, 103, 242, 255),
          padding: const EdgeInsets.all(10),
          child: Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.white),
            child: child,
          ),
        ),
        if (hasGoBackButton)
          Positioned(
              //botao de voltar
              top: 15,
              left: 15,
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
              ))
      ]),
    );
  }
}
