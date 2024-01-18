import 'dart:convert';

class DiamondPearl {
	String? backDefault;
	dynamic backFemale;
	String? backShiny;
	dynamic backShinyFemale;
	String? frontDefault;
	dynamic frontFemale;
	String? frontShiny;
	dynamic frontShinyFemale;

	DiamondPearl({
		this.backDefault, 
		this.backFemale, 
		this.backShiny, 
		this.backShinyFemale, 
		this.frontDefault, 
		this.frontFemale, 
		this.frontShiny, 
		this.frontShinyFemale, 
	});

	factory DiamondPearl.fromMap(Map<String, dynamic> data) => DiamondPearl(
				backDefault: data['back_default'] as String?,
				backFemale: data['back_female'] as dynamic,
				backShiny: data['back_shiny'] as String?,
				backShinyFemale: data['back_shiny_female'] as dynamic,
				frontDefault: data['front_default'] as String?,
				frontFemale: data['front_female'] as dynamic,
				frontShiny: data['front_shiny'] as String?,
				frontShinyFemale: data['front_shiny_female'] as dynamic,
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
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [DiamondPearl].
	factory DiamondPearl.fromJson(String data) {
		return DiamondPearl.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [DiamondPearl] to a JSON string.
	String toJson() => json.encode(toMap());
}
