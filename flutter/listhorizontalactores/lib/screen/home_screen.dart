import 'package:flutter/material.dart';
import 'package:listhorizontalactores/screen/imagen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 150,
                  color: Colors.amberAccent,
                  child: const Text("hola"),
                )
              ],
            ),
          ),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 150,
                width: double.infinity,
                color: Colors.blueAccent,
                child: const Text("data"),
              )
            ],
          ))
        ],
      ),
    );
  }
}
