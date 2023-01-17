import 'package:flutter/material.dart';
import 'package:iresenha/pages/suggested_activity_page.dart';
import 'package:iresenha/widgets/blue_button.dart';
import 'package:iresenha/widgets/page_title.dart';

import '../widgets/custom_dropdown.dart';

const double fontSize = 19;
const List<String> dropdownItemsList = [
  'Educacional',
  'DIY',
  'Caridade',
  'Recreacional'
];

class NewActivityPage extends StatefulWidget {
  const NewActivityPage({super.key});

  @override
  State<NewActivityPage> createState() => _NewActivityPageState();
}

class _NewActivityPageState extends State<NewActivityPage> {
  final blackTextStyle = const TextStyle(fontSize: fontSize);

  final blueTextStyle = const TextStyle(
    fontSize: fontSize,
    color: Color.fromRGBO(35, 199, 215, 1),
  );

  String dropdownValue = dropdownItemsList[0];

  void selectDropdownValue(String value) {
    setState((() => dropdownValue = value));
  }

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
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.45,
            decoration: const BoxDecoration(
                color: Color.fromRGBO(35, 199, 215, 1),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomDropdown(
                  dropdownValue: dropdownValue,
                  selectDropdownValue: selectDropdownValue,
                  dropdownItemsList: dropdownItemsList,
                )
              ],
            ),
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
