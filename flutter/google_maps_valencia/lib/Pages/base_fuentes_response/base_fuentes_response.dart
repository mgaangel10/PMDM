import 'dart:convert';

import 'result.dart';

class BaseFuentesResponse {
  int? totalCount;
  List<Result>? results;

  BaseFuentesResponse({this.totalCount, this.results});

  factory BaseFuentesResponse.fromMap(Map<String, dynamic> data) {
    return BaseFuentesResponse(
      totalCount: data['total_count'] as int?,
      results: (data['results'] as List<dynamic>?)
          ?.map((e) => Result.fromMap(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toMap() => {
        'total_count': totalCount,
        'results': results?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [BaseFuentesResponse].
  factory BaseFuentesResponse.fromJson(String data) {
    return BaseFuentesResponse.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [BaseFuentesResponse] to a JSON string.
  String toJson() => json.encode(toMap());
}
