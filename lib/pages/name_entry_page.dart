import 'package:flutter/material.dart';
import 'package:iresenha/components/name_text_field.dart';
import 'package:iresenha/services/local_storage.dart';
import 'package:iresenha/widgets/blue_button.dart';

class NameEntryPage extends StatelessWidget {
  NameEntryPage({super.key});

  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Center(
              child: Text(
                'Olá! Insira o seu nome para continuarmos',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.w700),
              ),
            ),
            NameTextField(
              textController: _textController,
            ),
            BlueButton(
                onPressed: () {
                  LocalStorage.setString('userName', _textController.text);
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil('/home', (Route route) => false);
                },
                text: 'Continuar')
          ],
        ),
      ),
    );
  }
}
