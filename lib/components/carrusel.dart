import 'package:carousel_slider/carousel_slider.dart';
import 'package:empleo/Models/empleo.dart';
import 'package:empleo/components/item.dart';
import 'package:flutter/material.dart';

class Carrusel extends StatelessWidget {
  // Recibimos una lista de Empleo para pintarlo en items
  List<Empleo> empleos;

  // recibira empleos cuando se llame a esta funcion
  Carrusel(this.empleos);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      // recorremos la lista y x cada item creamos una tarjeta
      // decimos si el item es el primero para poner el color oscuro
      items: this
          .empleos
          .map((e) => itemCarousel(
                e,
                themeDark: empleos.indexOf(e) == 0,
              ))
          .toList(),
      options: CarouselOptions(
        enableInfiniteScroll: false,
        reverse: false,
        //que tanto se mostrara cada item
        viewportFraction: 0.84,
        height: 210,
      ),
    );
  }
}
