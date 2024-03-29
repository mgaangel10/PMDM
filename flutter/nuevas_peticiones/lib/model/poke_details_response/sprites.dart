import 'dart:convert';

import 'other.dart';
import 'versions.dart';

class Sprites {
	String? backDefault;
	dynamic backFemale;
	String? backShiny;
	dynamic backShinyFemale;
	String? frontDefault;
	dynamic frontFemale;
	String? frontShiny;
	dynamic frontShinyFemale;
	Other? other;
	Versions? versions;

	Sprites({
		this.backDefault, 
		this.backFemale, 
		this.backShiny, 
		this.backShinyFemale, 
		this.frontDefault, 
		this.frontFemale, 
		this.frontShiny, 
		this.frontShinyFemale, 
		this.other, 
		this.versions, 
	});

	factory Sprites.fromMap(Map<String, dynamic> data) => Sprites(
				backDefault: data['back_default'] as String?,
				backFemale: data['back_female'] as dynamic,
				backShiny: data['back_shiny'] as String?,
				backShinyFemale: data['back_shiny_female'] as dynamic,
				frontDefault: data['front_default'] as String?,
				frontFemale: data['front_female'] as dynamic,
				frontShiny: data['front_shiny'] as String?,
				frontShinyFemale: data['front_shiny_female'] as dynamic,
				other: data['other'] == null
						? null
						: Other.fromMap(data['other'] as Map<String, dynamic>),
				versions: data['versions'] == null
						? null
						: Versions.fromMap(data['versions'] as Map<String, dynamic>),
			);

	Map<String, dynamic> toMap() => {
				'back_default': backDefault,
				'back_female': backFemale,
				'back_shiny': backShiny,
				'back_shiny_female': backShinyFemale,
				'front_default': frontDefault,
				'front_female': frontFemale,
				'front_shiny': frontShiny,
				'front_shiny_female': frontShinyFemale,
				'other': other?.toMap(),
				'versions': versions?.toMap(),
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Sprites].
	factory Sprites.fromJson(String data) {
		return Sprites.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Sprites] to a JSON string.
	String toJson() => json.encode(toMap());
}
