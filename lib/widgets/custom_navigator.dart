import 'package:flutter/material.dart';

class CustomNavigator extends StatelessWidget {
  const CustomNavigator(
      {super.key, required this.child, required this.navigatorKey});
  final GlobalKey navigatorKey;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Navigator(
        key: navigatorKey,
        onGenerateRoute: (RouteSettings settings) {
          return MaterialPageRoute(builder: (BuildContext context) {
            return child;
          });
        });
  }
}
