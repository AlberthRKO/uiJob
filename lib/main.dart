import 'package:empleo/screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(PantallaPrincipal());
}

class PantallaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "UI Busqueda de Empleo",
      home: Screen(),
      //definimos temas para los textos para reutilizarlos
      theme: ThemeData(
        primaryColor: Color(0XFF5F5FFF),
        accentColor: Color(0XFF030047),
        highlightColor: Color(0XFFB7B7D2),
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Color(0XFF030047),
          ),
          headline2: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Color(0XFF5F5FFF),
          ),
          headline3: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
          headline4: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Color(0XFF030047),
          ),
          bodyText1: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Color(0XFFB7B7D2),
          ),
        ),
      ),
    );
  }
}
