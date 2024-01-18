import 'package:flutter/material.dart';
import 'package:peticiones_api/model/pokemon_response/pokemon_response.dart';

class PokemonItem extends StatelessWidget {
  final PokemonResponse pokemon;

  const PokemonItem({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          debugPrint('Card tapped.');
        },
        child: SizedBox(
          width: 300,
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      child: Text(pokemon.name!),
                    ),
                    Image.network(pokemon.sprites!.frontDefault!),
                    Container()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


//Center(
  //    child: Column(
    //    children: [
      //    Image.network(
        //    pokemon.sprites!.frontDefault!,
          //  height: 100,
            //width: 100,
          //),
          //Text(pokemon.name!,
            //  style: const TextStyle(
              //    fontSize: 20,
                //  color: Colors.black,
                 // decoration: TextDecoration.none)),
       // ],
     // ),
    //);
