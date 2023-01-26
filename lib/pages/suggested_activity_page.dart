import 'package:flutter/material.dart';
import 'package:iresenha/model/activity_model.dart';
import 'package:iresenha/widgets/blue_button.dart';
import 'package:iresenha/widgets/page_title.dart';
import 'package:iresenha/widgets/white_button.dart';
import '../widgets/custom_back_button.dart';

const double fontSize = 19;
const blackTextStyle = TextStyle(fontSize: fontSize);
const blueTextStyle = TextStyle(
  fontSize: fontSize,
  color: Color.fromRGBO(35, 199, 215, 1),
);

class SuggestedActivityPage extends StatelessWidget {
  const SuggestedActivityPage({super.key, required this.activity});

  final ActivityModel activity;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:  [
          const CustomBackButton(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const PageTitle(title: 'Atividade Sugerida'),
                Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                        style:  TextStyle(
                          color: Colors.black, fontSize: fontSize),
                          children: [
                            TextSpan(text: 'Veja detalhes da ', style: blackTextStyle
                            ),
                            TextSpan(text: 'atividade sugerida ', style: blueTextStyle
                            ),
                            TextSpan(
                              text: 'e escolha se ela será executada ', style: blackTextStyle
                            ),
                          ]
                      )
                  ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.35,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color.fromRGBO(35, 199, 215, 1),
                  width: 2
                  ),
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ActivityDetail(detailName: 'Nome:', detailValue: activity.name),
                    ActivityDetail(detailName: 'Tipo de atividade:', detailValue: activity.type),
                    ActivityDetail(detailName: 'Acessibilidade:', detailValue: activity.acessibility.toString()),
                    ActivityDetail(detailName: 'Preço:', detailValue: activity.price.toString()),
                    ActivityDetail(detailName: 'Participantes:', detailValue: activity.participants.toString()),
                  ],
                ),
              ),
              Column(
                children: [
                  WhiteButton(onPressed: (() => print('adicionar atividade ${activity.name}')), text: 'Descartar Atividade'),
                  const SizedBox(height: 10,),
                  BlueButton(onPressed: (() => print('adicionar atividade')), text: 'Adicionar Atividade'),
                ],
              )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ActivityDetail extends StatelessWidget {
  const ActivityDetail({
    Key? key,
    required this.detailName,
    required this.detailValue,
  }) : super(key: key);

  final String detailName;
  final String detailValue;

  final boldText = const TextStyle(fontWeight: FontWeight.w700, fontSize: 18);
  final normalText = const TextStyle(fontSize: 18, );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(detailName, style: boldText),
          const SizedBox(width: 5,),
          Flexible(child: Text(detailValue, style: normalText,))
        ],
      ),
    );
  }
}
