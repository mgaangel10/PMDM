import 'dart:convert';

import 'ability.dart';
import 'form.dart';
import 'game_index.dart';
import 'move.dart';
import 'species.dart';
import 'sprites.dart';
import 'stat.dart';
import 'type.dart';

class PokemonResponse {
  List<Ability>? abilities;
  int? baseExperience;
  List<Form>? forms;
  List<GameIndex>? gameIndices;
  int? height;
  List<dynamic>? heldItems;
  int? id;
  bool? isDefault;
  String? locationAreaEncounters;
  List<Move>? moves;
  String? name;
  int? order;
  List<dynamic>? pastAbilities;
  List<dynamic>? pastTypes;
  Species? species;
  Sprites? sprites;
  List<Stat>? stats;
  List<Type>? types;
  int? weight;

  PokemonResponse({
    this.abilities,
    this.baseExperience,
    this.forms,
    this.gameIndices,
    this.height,
    this.heldItems,
    this.id,
    this.isDefault,
    this.locationAreaEncounters,
    this.moves,
    this.name,
    this.order,
    this.pastAbilities,
    this.pastTypes,
    this.species,
    this.sprites,
    this.stats,
    this.types,
    this.weight,
  });

  factory PokemonResponse.fromMap(Map<String, dynamic> data) {
    return PokemonResponse(
      abilities: (data['abilities'] as List<dynamic>?)
          ?.map((e) => Ability.fromMap(e as Map<String, dynamic>))
          .toList(),
      baseExperience: data['base_experience'] as int?,
      forms: (data['forms'] as List<dynamic>?)
          ?.map((e) => Form.fromMap(e as Map<String, dynamic>))
          .toList(),
      gameIndices: (data['game_indices'] as List<dynamic>?)
          ?.map((e) => GameIndex.fromMap(e as Map<String, dynamic>))
          .toList(),
      height: data['height'] as int?,
      heldItems: data['held_items'] as List<dynamic>?,
      id: data['id'] as int?,
      isDefault: data['is_default'] as bool?,
      locationAreaEncounters: data['location_area_encounters'] as String?,
      moves: (data['moves'] as List<dynamic>?)
          ?.map((e) => Move.fromMap(e as Map<String, dynamic>))
          .toList(),
      name: data['name'] as String?,
      order: data['order'] as int?,
      pastAbilities: data['past_abilities'] as List<dynamic>?,
      pastTypes: data['past_types'] as List<dynamic>?,
      species: data['species'] == null
          ? null
          : Species.fromMap(data['species'] as Map<String, dynamic>),
      sprites: data['sprites'] == null
          ? null
          : Sprites.fromMap(data['sprites'] as Map<String, dynamic>),
      stats: (data['stats'] as List<dynamic>?)
          ?.map((e) => Stat.fromMap(e as Map<String, dynamic>))
          .toList(),
      types: (data['types'] as List<dynamic>?)
          ?.map((e) => Type.fromMap(e as Map<String, dynamic>))
          .toList(),
      weight: data['weight'] as int?,
    );
  }

  Map<String, dynamic> toMap() => {
        'abilities': abilities?.map((e) => e.toMap()).toList(),
        'base_experience': baseExperience,
        'forms': forms?.map((e) => e.toMap()).toList(),
        'game_indices': gameIndices?.map((e) => e.toMap()).toList(),
        'height': height,
        'held_items': heldItems,
        'id': id,
        'is_default': isDefault,
        'location_area_encounters': locationAreaEncounters,
        'moves': moves?.map((e) => e.toMap()).toList(),
        'name': name,
        'order': order,
        'past_abilities': pastAbilities,
        'past_types': pastTypes,
        'species': species?.toMap(),
        'sprites': sprites?.toMap(),
        'stats': stats?.map((e) => e.toMap()).toList(),
        'types': types?.map((e) => e.toMap()).toList(),
        'weight': weight,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [PokemonResponse].
  factory PokemonResponse.fromJson(String data) {
    return PokemonResponse.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [PokemonResponse] to a JSON string.
  String toJson() => json.encode(toMap());
}
