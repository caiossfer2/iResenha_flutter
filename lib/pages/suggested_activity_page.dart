import 'package:flutter/material.dart';

import '../widgets/custom_back_button.dart';

class SuggestedActivityPage extends StatelessWidget {
  const SuggestedActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          Center(child: Text('Atividade Sugerida')),
          CustomBackButton()
        ],
      ),
    );
  }
}
