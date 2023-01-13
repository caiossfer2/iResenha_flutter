import 'package:flutter/material.dart';
import 'package:iresenha/pages/activities_historic_page.dart';
import 'package:iresenha/pages/new_activity_page.dart';
import 'package:iresenha/pages/planned_activities_page.dart';
import 'package:iresenha/widgets/custom_navigator.dart';

class MainContainer extends StatefulWidget {
  const MainContainer({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  State<MainContainer> createState() => _MainContainerState();
}

class _MainContainerState extends State<MainContainer> {
  final List<Widget> pages = const [
    PlannedActivitiesPage(),
    NewActivityPage(),
    ActivitiesHistoricPage()
  ];

  int pageIndex = 0;

  Map<int, GlobalKey> navigatorKeys = {
    0: GlobalKey(),
    1: GlobalKey(),
    2: GlobalKey(),
  };

  void onBottomBarTap(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: const Color.fromARGB(237, 103, 242, 255),
          padding: const EdgeInsets.all(10),
          child: Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.white),
            child: WillPopScope(
              onWillPop: () async {
                return !await Navigator.maybePop(
                    navigatorKeys[pageIndex]!.currentState!.context);
              },
              child: IndexedStack(index: pageIndex, children: [
                CustomNavigator(
                  navigatorKey: navigatorKeys[0]!,
                  child: const PlannedActivitiesPage(),
                ),
                CustomNavigator(
                  navigatorKey: navigatorKeys[1]!,
                  child: const NewActivityPage(),
                ),
                CustomNavigator(
                  navigatorKey: navigatorKeys[2]!,
                  child: const ActivitiesHistoricPage(),
                )
              ]),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month_rounded),
                label: 'Atividades Planejadas'),
            BottomNavigationBarItem(
                icon: Icon(Icons.add), label: 'Nova Atividade'),
            BottomNavigationBarItem(
                icon: Icon(Icons.access_time),
                label: 'Histórico de Atividades'),
          ],
          onTap: onBottomBarTap,
          currentIndex: pageIndex,
        ),
      ),
    );
  }
}
