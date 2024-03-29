import 'dart:convert';

import 'crystal.dart';
import 'gold.dart';
import 'silver.dart';

class GenerationIi {
	Crystal? crystal;
	Gold? gold;
	Silver? silver;

	GenerationIi({this.crystal, this.gold, this.silver});

	factory GenerationIi.fromMap(Map<String, dynamic> data) => GenerationIi(
				crystal: data['crystal'] == null
						? null
						: Crystal.fromMap(data['crystal'] as Map<String, dynamic>),
				gold: data['gold'] == null
						? null
						: Gold.fromMap(data['gold'] as Map<String, dynamic>),
				silver: data['silver'] == null
						? null
						: Silver.fromMap(data['silver'] as Map<String, dynamic>),
			);

	Map<String, dynamic> toMap() => {
				'crystal': crystal?.toMap(),
				'gold': gold?.toMap(),
				'silver': silver?.toMap(),
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [GenerationIi].
	factory GenerationIi.fromJson(String data) {
		return GenerationIi.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [GenerationIi] to a JSON string.
	String toJson() => json.encode(toMap());
}
