import 'package:flutter/material.dart';
import 'package:iresenha/pages/home_page.dart';
import 'package:iresenha/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/welcome',
        routes: {
          '/welcome': (_) => const WelcomePage(),
          '/home': (_) => const HomePage(),
        });
  }
}
