import 'package:empleo/Models/empleo.dart';
import 'package:empleo/components/itemLista.dart';
import 'package:flutter/material.dart';

class Listas extends StatelessWidget {
  List<Empleo> listaEmpleo;

  // la pasamos x el constructor
  Listas(this.listaEmpleo);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // indicamos que no se aga scroll en la lista,
      // ya que el padre del content lo define
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      // recibe la cantidad de items
      itemCount: this.listaEmpleo.length,
      // definimos que ara en cada recorrido de la lista
      itemBuilder: (context, index) => ItemLista(this.listaEmpleo[index]),
    );
  }
}
