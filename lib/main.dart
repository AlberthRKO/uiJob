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
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ui Busqueda de Empleo'),
        ),
      ),
    );
  }
}
