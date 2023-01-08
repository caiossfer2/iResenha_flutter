import 'package:flutter/material.dart';
import '../widgets/blue_button.dart';
import '../widgets/page_title.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const PageTitle(),
            const Image(
              image: AssetImage('assets/welcome-image.png'),
            ),
            const Text(
              "O melhor lugar para encontrar e gerenciar atividades !",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 22),
            ),
            BlueButton(
                onPressed: (() => Navigator.of(context).pushNamed('/home')),
                text: 'Continuar')
          ],
        ),
      ),
    );
  }
}
