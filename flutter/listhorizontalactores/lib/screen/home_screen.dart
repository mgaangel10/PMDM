import 'package:flutter/material.dart';
import 'package:listhorizontalactores/screen/imagen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("actores")),
      body: ListView(
        children: [
          Expanded(
              child: Row(
            children: [
              Container(
                child: ImagenClass(),
                width: double.infinity,
              )
            ],
          ))
        ],
      ),
    );
  }
}
