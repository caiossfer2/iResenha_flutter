import 'package:flutter/material.dart';
import 'package:iresenha/widgets/page_title.dart';

const double fontSize = 19;
const blackTextStyle = TextStyle(fontSize: fontSize);
const blueTextStyle = TextStyle(
  fontSize: fontSize,
  color: Color.fromRGBO(35, 199, 215, 1),
);

class PlannedActivitiesPage extends StatelessWidget {
  const PlannedActivitiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const PageTitle(title: 'Atividades Planejadas'),
          Center(
            child: RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                  style:  TextStyle(
                    color: Colors.black, fontSize: fontSize),
                    children: [
                      TextSpan(text: 'Confira os ', style: blackTextStyle),
                      TextSpan(text: 'cards ', style: blueTextStyle),
                      TextSpan(text: 'com informações das suas ', style: blackTextStyle),
                      TextSpan(text: 'atividades planejadas ', style: blueTextStyle),
                    ]
                )
            ),
          ),
        ],
      ),
    );
  }
}

// BlueButton(
//   onPressed: (() {
//     Navigator.of(context)
//         .push(MaterialPageRoute(builder: (BuildContext context) {
//       return const SuggestedActivityPage();
//     }));
//   }),
//   text: 'teste',
// )