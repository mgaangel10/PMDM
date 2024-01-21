import 'package:flutter/material.dart';

class ParkingItem extends StatelessWidget {
  final String nombre;
  final String direccion;

  const ParkingItem({Key? key, required this.nombre, required this.direccion})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () {
          Text(nombre);
        },
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,

          children: [Text(nombre), Text(direccion)],
        ),
      ),
    );
  }
}
