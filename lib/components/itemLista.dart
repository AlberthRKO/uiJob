import 'package:empleo/Models/empleo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemLista extends StatefulWidget {
  // recibimos el item de la lista y pintamos los datos
  Empleo empleo;
  ItemLista(this.empleo);

  @override
  _ItemListaState createState() => _ItemListaState();
}

class _ItemListaState extends State<ItemLista> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
      child: Container(
        decoration: decoracion(),
        height: 100,
        child: recentEmpleo(context),
      ),
    );
  }

  BoxDecoration decoracion() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(5),
      boxShadow: [
        BoxShadow(
          color: Colors.blue.shade50,
          offset: Offset(4, 4),
          blurRadius: 8,
        ),
      ],
    );
  }

  Widget recentEmpleo(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: SvgPicture.asset(
                this.widget.empleo.company.urlLogo,
                width: 40,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  this.widget.empleo.company.name,
                  style: TextStyle(
                    fontSize: 12,
                    color: Theme.of(context).highlightColor,
                  ),
                ),
                Text(
                  this.widget.empleo.role,
                  style: Theme.of(context).textTheme.headline5,
                ),
                SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 15,
                      color: Theme.of(context).highlightColor,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      this.widget.empleo.location,
                      style: TextStyle(
                        fontSize: 12,
                        color: Theme.of(context).highlightColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        icono(),
      ],
    );
  }

  Widget icono() {
    return Padding(
      padding: const EdgeInsets.only(right: 20, top: 20),
      child: GestureDetector(
        child: Icon(
          this.widget.empleo.isFavorite
              ? Icons.favorite
              : Icons.favorite_border,
          color: Colors.grey,
          size: 20,
        ),
        onTap: () {
          setState(() {
            // cuando le agan click cambiara a lo diferente q es..
            // arranca en false asique sera true
            this.widget.empleo.isFavorite = !this.widget.empleo.isFavorite;
          });
        },
      ),
    );
  }
}
