import 'package:flutter/material.dart';
import 'package:nuevas_peticiones/widget/card_pokemon.dart';

class HomeScreen extends StatelessWidget {
  final List<PokemonItem> pokemonList;

  const HomeScreen({Key? key, required this.pokemonList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Listado de Pokémon"),
      ),
      body: ListView.builder(
        itemCount: pokemonList.length,
        itemBuilder: (context, index) {
          final pokemon = pokemonList[index];
          return PokemonItem(name: pokemon.name, id: pokemon.id);
        },
      ),
    );
  }
}
