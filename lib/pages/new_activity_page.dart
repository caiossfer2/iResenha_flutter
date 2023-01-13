import 'package:flutter/material.dart';
import 'package:iresenha/pages/suggested_activity_page.dart';
import 'package:iresenha/widgets/blue_button.dart';
import 'package:iresenha/widgets/page_title.dart';

const double fontSize = 19;

class NewActivityPage extends StatelessWidget {
  const NewActivityPage({super.key});

  final blackTextStyle = const TextStyle(fontSize: fontSize);
  final blueTextStyle = const TextStyle(
    fontSize: fontSize,
    color: Color.fromRGBO(35, 199, 215, 1),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const PageTitle(title: 'Nova Atividade'),
          Center(
            child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    style: const TextStyle(
                        color: Colors.black, fontSize: fontSize),
                    children: [
                      TextSpan(text: 'Preencha os ', style: blackTextStyle),
                      TextSpan(text: 'filtros ', style: blueTextStyle),
                      TextSpan(text: 'para sugerirmos ', style: blackTextStyle),
                      TextSpan(text: 'uma ', style: blackTextStyle),
                      TextSpan(text: 'nova atividade ', style: blueTextStyle),
                    ])),
          ),
          BlueButton(
            text: 'Continuar',
            onPressed: (() {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return const SuggestedActivityPage();
              }));
            }),
          ),
        ],
      ),
    );
  }
}
