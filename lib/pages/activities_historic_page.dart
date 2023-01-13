import 'package:flutter/material.dart';

class ActivitiesHistoricPage extends StatelessWidget {
  const ActivitiesHistoricPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (BuildContext context) {
          return Scaffold(
            body: Center(child: Text('historico de atividades')),
          );
        });
      },
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