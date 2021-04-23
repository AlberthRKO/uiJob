import 'package:empleo/Models/company.dart';
import 'package:empleo/Models/empleo.dart';
import 'package:empleo/components/carrusel.dart';
import 'package:empleo/components/listas.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Contenido extends StatelessWidget {
  // Llamamos al modelo Empleo y llenamos con datos
  List<Empleo> listaEmpleo = [
    Empleo(
      role: 'Diseñador UI/UX',
      location: 'Sucre - Bolivia',
      company: Company(
        name: 'Google',
        urlLogo: 'assets/logos/google.svg',
      ),
    ),
    Empleo(
      role: 'Backend Laravel',
      location: 'La Paz - Bolivia',
      company: Company(
        name: 'Netflix',
        urlLogo: 'assets/logos/netflix.svg',
      ),
    ),
    Empleo(
      role: 'Desarrollador Web',
      location: 'Tarija - Bolivia',
      company: Company(
        name: 'Amazon',
        urlLogo: 'assets/logos/amazon.svg',
      ),
    ),
  ];

  List<Empleo> recentEmpleo = [
    Empleo(
      role: 'Frontend Web',
      location: 'Sucre - Bolivia',
      company: Company(
        name: 'Tik Tok',
        urlLogo: 'assets/logos/tiktok.svg',
      ),
    ),
    Empleo(
      role: 'Backend Python',
      location: 'La Paz - Bolivia',
      company: Company(
        name: 'Twitch',
        urlLogo: 'assets/logos/twitch.svg',
      ),
    ),
    Empleo(
      role: 'Desarrollador Movil',
      location: 'Tarija - Bolivia',
      company: Company(
        name: 'Youtube',
        urlLogo: 'assets/logos/youtube.svg',
      ),
    ),
    Empleo(
      role: 'Frontend Web',
      location: 'Sucre - Bolivia',
      company: Company(
        name: 'Tik Tok',
        urlLogo: 'assets/logos/tiktok.svg',
      ),
    ),
    Empleo(
      role: 'Backend Python',
      location: 'La Paz - Bolivia',
      company: Company(
        name: 'Twitch',
        urlLogo: 'assets/logos/twitch.svg',
      ),
    ),
    Empleo(
      role: 'Desarrollador Movil',
      location: 'Tarija - Bolivia',
      company: Company(
        name: 'Youtube',
        urlLogo: 'assets/logos/youtube.svg',
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            customBar(),
            textHeader(context),
            tarjetas(context),
            recent(context),
          ],
        ),
      ),
    );
  }

  Widget customBar() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            iconSize: 40,
            icon: SvgPicture.asset('assets/icons/slider.svg'),
            onPressed: () {},
          ),
          Row(
            children: [
              IconButton(
                iconSize: 40,
                icon: SvgPicture.asset('assets/icons/search.svg'),
                onPressed: () {},
              ),
              IconButton(
                iconSize: 40,
                icon: SvgPicture.asset('assets/icons/settings.svg'),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget textHeader(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Busca Trabajo Aqui',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Text(
            'Encuentra el mejor',
            style: Theme.of(context).textTheme.headline1,
          ),
          Text(
            'trabajo para ti',
            style: Theme.of(context).textTheme.headline2,
          ),
        ],
      ),
    );
  }

  Widget tarjetas(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text(
            'Para Ti',
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        Carrusel(this.listaEmpleo),
      ],
    );
  }

  Widget recent(context) {
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(right: 30, left: 30, top: 5, bottom: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('Reciente', style: Theme.of(context).textTheme.bodyText1),
              Text('Ver Todos', style: Theme.of(context).textTheme.bodyText2),
            ],
          ),
        ),
        // le mmandamos el array de empleos
        Listas(this.recentEmpleo),
      ],
    );
  }
}
