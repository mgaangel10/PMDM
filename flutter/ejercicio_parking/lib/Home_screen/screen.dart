import 'package:ejercicio_parking/Widget/card_parking.dart';
import 'package:ejercicio_parking/model/list_parking_response/result.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<Result> parkingList;

  const HomeScreen({Key? key, required this.parkingList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Listado de Parkings"),
      ),
      body: ListView.builder(
        itemCount: parkingList.length,
        itemBuilder: (context, index) {
          final parking = parkingList[index];
          return ParkingItem(
              nombre: parking.nombre!, direccion: parking.direccion!);
        },
      ),
    );
  }
}
