import 'package:flutter/material.dart';
import 'package:iresenha/model/activity_model.dart';

import '../widgets/custom_back_button.dart';

class SuggestedActivityPage extends StatelessWidget {
  const SuggestedActivityPage({super.key, required this.activity});

  final ActivityModel activity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:  [
          const Center(child: Text('Atividade Sugerida')),
          Center(
            child: Column(
              children: [
                Text(activity.name),
                Text(activity.participants.toString()),
              ],
            ),
          ),
          const CustomBackButton()
        ],
      ),
    );
  }
}
