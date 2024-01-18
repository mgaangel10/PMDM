import 'package:flutter/material.dart';
import 'package:peticiones_api/model/pokemon_response/pokemon_response.dart';

import 'package:peticiones_api/widgets/pokemon_card.dart';
import 'package:peticiones_api/widgets/pokemon_view.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("pokemons"),
      ),
      body: ListView(
        children: const [PokemonWidget()],
      ),
    );
  }
}
