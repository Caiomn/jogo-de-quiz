import 'package:flutter/material.dart';


import 'perguntas.dart';
import 'result.dart';
import 'Home_Page.dart';

void main() {

  runApp(aplicativo());

}

class aplicativo extends StatelessWidget {
  const aplicativo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        "/": (context) => PrimeiraTela(),
        "quiz": (context) => Perguntas(),
        result.routeName: (context) => result(),
      },
    );
  }
}

