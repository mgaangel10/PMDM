import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:nuevas_peticiones/home_screen/screen.dart';
import 'package:nuevas_peticiones/widget/card_pokemon.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: FutureBuilder<List<PokemonItem>>(
        future: fetchPokemonList(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            return HomeScreen(pokemonList: snapshot.data!);
          }
        },
      ),
    );
  }

  Future<List<PokemonItem>> fetchPokemonList() async {
    final response = await http
        .get(Uri.parse('https://pokeapi.co/api/v2/pokemon?limit=151'));

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      return data['results']
          .map<PokemonItem>((json) => PokemonItem(
              name: json['name'], id: int.parse(json['url'].split('/')[6])))
          .toList();
    } else {
      throw Exception('Failed to load Pokémon');
    }
  }
}
