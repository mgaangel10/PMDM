import 'package:flutter/material.dart';
import 'package:navegacion_entre_paginas/card/card_coches.dart';

class home_screem extends StatefulWidget {
  const home_screem({super.key});

  @override
  State<home_screem> createState() => _home_screemState();
}

class _home_screemState extends State<home_screem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("coches"),
      ),
      body: Center(
        child: CardCoches(),
      ),
    );
  }
}
