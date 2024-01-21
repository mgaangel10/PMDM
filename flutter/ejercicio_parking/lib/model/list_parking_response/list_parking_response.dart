import 'dart:convert';

import 'result.dart';

class LIstParkingResponse {
  int? totalCount;
  List<Result>? results;

  LIstParkingResponse({this.totalCount, this.results});

  factory LIstParkingResponse.fromMap(Map<String, dynamic> data) {
    return LIstParkingResponse(
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
  /// Parses the string and returns the resulting Json object as [LIstParkingResponse].
  factory LIstParkingResponse.fromJson(String data) {
    return LIstParkingResponse.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [LIstParkingResponse] to a JSON string.
  String toJson() => json.encode(toMap());
}
