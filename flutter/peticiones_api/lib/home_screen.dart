import 'package:flutter/material.dart';
import 'package:peticiones_api/card/card.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("pokemons"),
      ),
      body: ListView(
        children: [
          Container(
            child: CardPoke(),
          )
        ],
      ),
    );
  }
}
