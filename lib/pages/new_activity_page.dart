import 'package:flutter/material.dart';
import 'package:iresenha/pages/suggested_activity_page.dart';
import 'package:iresenha/repositories/activities_repository.dart';
import 'package:iresenha/widgets/blue_button.dart';
import 'package:iresenha/widgets/custom_text_field.dart';
import 'package:iresenha/widgets/custom_date_picker.dart';
import 'package:iresenha/widgets/page_title.dart';

import '../widgets/custom_dropdown.dart';

const double fontSize = 19;
const List<String> dropdownItemsList = [
  'Educacional',
  'DIY',
  'Caridade',
  'Recreacional'
];

const Map<String, String> dropdownItemsRealValue = {
  'Educacional' : 'educational',
  'DIY' : 'diy',
  'Caridade' : 'charity',
  'Recreacional' : 'recreational'
};

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

  String? dropdownValue;

  void selectDropdownValue(String value) {
    setState((() => dropdownValue = value));
  }

  final TextEditingController _textEditingController = TextEditingController();

   DateTime selectedDate = DateTime(2101);

  void setDate(DateTime date) {
    setState(() {
      selectedDate = date;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.8,
          child: Column(
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
                          TextSpan(
                              text: 'para sugerirmos ', style: blackTextStyle),
                          TextSpan(text: 'uma ', style: blackTextStyle),
                          TextSpan(
                              text: 'nova atividade ', style: blueTextStyle),
                        ]
                    )
                ),
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
                    ),
                    CustomTextField(controller: _textEditingController),
                    CustomDatePicker(selectedDate: selectedDate, setDate: setDate)
                  ],
                ),
              ),
              BlueButton(
                text: 'Continuar',
                onPressed: (() {
                  if(_textEditingController.text != '' && dropdownValue != null){
                    ActivitiesRepository.searchActivities(dropdownItemsRealValue[dropdownValue]!, _textEditingController.text).then((value){
                      Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                        return SuggestedActivityPage(activity: value);
                      }));
                    });
                  }
                  
                
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
