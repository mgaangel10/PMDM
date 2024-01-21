import 'dart:convert';

import 'geo_point2d.dart';
import 'geo_shape.dart';

class Result {
  String? nombre;
  String? direccion;
  double? idAparcamiento; // Cambiado de int a double
  String? numeropol;
  double? tipo; // Cambiado de int a double
  double? plazastota; // Cambiado de int a double
  double? plazaslibr; // Cambiado de int a double
  dynamic ultimaMod;
  double? objectid; // Cambiado de int a double
  double? ocupacion;
  GeoShape? geoShape;
  GeoPoint2d? geoPoint2d;

  Result({
    this.nombre,
    this.direccion,
    this.idAparcamiento,
    this.numeropol,
    this.tipo,
    this.plazastota,
    this.plazaslibr,
    this.ultimaMod,
    this.objectid,
    this.ocupacion,
    this.geoShape,
    this.geoPoint2d,
  });

  factory Result.fromMap(Map<String, dynamic> data) => Result(
        nombre: data['nombre'] as String?,
        direccion: data['direccion'] as String?,
        idAparcamiento: (data['id_aparcamiento'] as num?)?.toDouble(),
        numeropol: data['numeropol'] as String?,
        tipo: (data['tipo'] as num?)?.toDouble(),
        plazastota: (data['plazastota'] as num?)?.toDouble(),
        plazaslibr: (data['plazaslibr'] as num?)?.toDouble(),
        ultimaMod: data['ultima_mod'] as dynamic,
        objectid: (data['objectid'] as num?)?.toDouble(),
        ocupacion: (data['ocupacion'] as num?)?.toDouble(),
        geoShape: data['geo_shape'] == null
            ? null
            : GeoShape.fromMap(data['geo_shape'] as Map<String, dynamic>),
        geoPoint2d: data['geo_point_2d'] == null
            ? null
            : GeoPoint2d.fromMap(data['geo_point_2d'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toMap() => {
        'nombre': nombre,
        'direccion': direccion,
        'id_aparcamiento': idAparcamiento,
        'numeropol': numeropol,
        'tipo': tipo,
        'plazastota': plazastota,
        'plazaslibr': plazaslibr,
        'ultima_mod': ultimaMod,
        'objectid': objectid,
        'ocupacion': ocupacion,
        'geo_shape': geoShape?.toMap(),
        'geo_point_2d': geoPoint2d?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Result].
  factory Result.fromJson(String data) {
    return Result.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Result] to a JSON string.
  String toJson() => json.encode(toMap());
}
