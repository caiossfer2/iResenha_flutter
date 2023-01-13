import 'package:flutter/material.dart';

class PlannedActivitiesPage extends StatelessWidget {
  const PlannedActivitiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('atividades planejadas')),
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