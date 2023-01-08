import 'package:flutter/material.dart';

import '../widgets/main_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MainContainer(
        child: Column(
          children: [
            Text('home'),
          ],
        ),
      ),
    );
  }
}
