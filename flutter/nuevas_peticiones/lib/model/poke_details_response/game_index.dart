import 'dart:convert';

import 'version.dart';

class GameIndex {
	int? gameIndex;
	Version? version;

	GameIndex({this.gameIndex, this.version});

	factory GameIndex.fromMap(Map<String, dynamic> data) => GameIndex(
				gameIndex: data['game_index'] as int?,
				version: data['version'] == null
						? null
						: Version.fromMap(data['version'] as Map<String, dynamic>),
			);

	Map<String, dynamic> toMap() => {
				'game_index': gameIndex,
				'version': version?.toMap(),
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [GameIndex].
	factory GameIndex.fromJson(String data) {
		return GameIndex.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [GameIndex] to a JSON string.
	String toJson() => json.encode(toMap());
}
