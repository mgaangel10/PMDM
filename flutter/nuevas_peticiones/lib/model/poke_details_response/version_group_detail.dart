import 'dart:convert';

import 'move_learn_method.dart';
import 'version_group.dart';

class VersionGroupDetail {
	int? levelLearnedAt;
	MoveLearnMethod? moveLearnMethod;
	VersionGroup? versionGroup;

	VersionGroupDetail({
		this.levelLearnedAt, 
		this.moveLearnMethod, 
		this.versionGroup, 
	});

	factory VersionGroupDetail.fromMap(Map<String, dynamic> data) {
		return VersionGroupDetail(
			levelLearnedAt: data['level_learned_at'] as int?,
			moveLearnMethod: data['move_learn_method'] == null
						? null
						: MoveLearnMethod.fromMap(data['move_learn_method'] as Map<String, dynamic>),
			versionGroup: data['version_group'] == null
						? null
						: VersionGroup.fromMap(data['version_group'] as Map<String, dynamic>),
		);
	}



	Map<String, dynamic> toMap() => {
				'level_learned_at': levelLearnedAt,
				'move_learn_method': moveLearnMethod?.toMap(),
				'version_group': versionGroup?.toMap(),
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [VersionGroupDetail].
	factory VersionGroupDetail.fromJson(String data) {
		return VersionGroupDetail.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [VersionGroupDetail] to a JSON string.
	String toJson() => json.encode(toMap());
}
