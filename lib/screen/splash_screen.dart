import 'package:empleo/screen/content_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Screen extends StatelessWidget {
  void handleContenido(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => Contenido(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(
              'assets/splash.svg',
              width: 400,
            ),
            Column(
              children: [
                Text(
                  'Buscas Trabajo ?',
                  style: Theme.of(context).textTheme.headline1,
                ),
                Text(
                  'Tenemos la solución',
                  style: Theme.of(context).textTheme.headline2,
                ),
              ],
            ),
            MaterialButton(
              elevation: 10,
              minWidth: 150,
              height: 40,
              color: Theme.of(context).primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              child: Text(
                'Comencemos',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
              onPressed: () => handleContenido(context),
            ),
          ],
        ),
      ),
    );
  }
}
