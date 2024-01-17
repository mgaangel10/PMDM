import 'package:flutter/material.dart';

class CardCoches extends StatelessWidget {
  const CardCoches({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          debugPrint('Card tapped.');
        },
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "El mas barato,Buena puntuacion",
                  style: TextStyle(color: Colors.green),
                ),
                Text("45 Ofertas"),
              ],
            ),
            SizedBox(
              width: 300,
              height: 100,
              child: Align(
                alignment: Alignment.center,
                child: Image(
                  image: NetworkImage(
                    "https://imagenes.lainformacion.com/files/image_656_370/uploads/imagenes/2011/03/21/zapato1.jpg",
                  ),
                  width: double.infinity,
                ),
              ),
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Mini", textAlign: TextAlign.start),
                    Text("2-3 puertas, sajsajsajs"),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.abc),
                        Icon(Icons.abc),
                        Icon(Icons.abc),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
