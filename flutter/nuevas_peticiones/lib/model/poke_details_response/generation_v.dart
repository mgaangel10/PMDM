import 'dart:convert';

import 'black_white.dart';

class GenerationV {
	BlackWhite? blackWhite;

	GenerationV({this.blackWhite});

	factory GenerationV.fromMap(Map<String, dynamic> data) => GenerationV(
				blackWhite: data['black-white'] == null
						? null
						: BlackWhite.fromMap(data['black-white'] as Map<String, dynamic>),
			);

	Map<String, dynamic> toMap() => {
				'black-white': blackWhite?.toMap(),
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [GenerationV].
	factory GenerationV.fromJson(String data) {
		return GenerationV.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [GenerationV] to a JSON string.
	String toJson() => json.encode(toMap());
}
