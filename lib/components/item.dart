import 'package:empleo/Models/empleo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class itemCarousel extends StatefulWidget {
  // recibimos el objeto de empleo para poner los parametros en cada seccion de la tarjeta
  Empleo empleo;
  //creamos un bool para el tema en cada item
  bool themeDark;
  // hacemos que el item reciba el objeto empleo
  itemCarousel(this.empleo, {this.themeDark = false});

  @override
  _itemCarouselState createState() => _itemCarouselState();
}

class _itemCarouselState extends State<itemCarousel> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, top: 15, bottom: 15),
      child: Container(
        decoration: decoracion(context),
        child: Padding(
          padding: const EdgeInsets.all(17),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  companyLogo(),
                  icono(),
                ],
              ),
              info(context),
            ],
          ),
        ),
      ),
    );
  }

  decoracion(context) {
    return BoxDecoration(
      color:
          this.widget.themeDark ? Theme.of(context).primaryColor : Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: Colors.black45,
          offset: Offset(4, 4),
          blurRadius: 10,
        ),
      ],
    );
  }

  Widget companyLogo() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: ClipRRect(
          child: SvgPicture.asset(
            this.widget.empleo.company.urlLogo,
            width: 42,
            height: 42,
          ),
        ),
      ),
    );
  }

  Widget icono() {
    // agregamos un gestor de estado y con esto cambiamos de steeles a steful
    return GestureDetector(
      child: Icon(
        this.widget.empleo.isFavorite ? Icons.favorite : Icons.favorite_border,
        color: this.widget.themeDark ? Colors.white : Colors.grey,
      ),
      onTap: () {
        setState(() {
          // cuando le agan click cambiara a lo diferente q es..
          // arranca en false asique sera true
          this.widget.empleo.isFavorite = !this.widget.empleo.isFavorite;
        });
      },
    );
  }

  Widget info(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          this.widget.empleo.company.name,
          style: TextStyle(
            fontSize: 14,
            color: this.widget.themeDark
                ? Theme.of(context).highlightColor
                : Colors.grey,
          ),
        ),
        Text(
          this.widget.empleo.role,
          style: this.widget.themeDark
              ? Theme.of(context).textTheme.headline3
              : Theme.of(context).textTheme.headline4,
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Icon(
              Icons.location_on,
              color: this.widget.themeDark
                  ? Theme.of(context).highlightColor
                  : Colors.grey,
              size: 15,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              this.widget.empleo.location,
              style: TextStyle(
                fontSize: 13,
                color: this.widget.themeDark
                    ? Theme.of(context).highlightColor
                    : Colors.grey,
              ),
            )
          ],
        )
      ],
    );
  }
}
