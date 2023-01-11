import 'package:flutter/material.dart';
import 'package:iresenha/services/local_storage.dart';

import '../widgets/main_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ValueNotifier<String> userName = ValueNotifier<String>('');

  @override
  void initState() {
    LocalStorage.getString('userName').then((value) => userName.value = value);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: MainContainer(
          hasGoBackButton: true,
          child: Center(child: Text('Olá, usuario')),
        ),
      ),
    );
  }
}
