import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:valorant_app/src/data/models/maps/maps_response.dart';

part 'map_detail_response.g.dart';

MapDetailResponse mapsResponseFromJson(String str) =>
    MapDetailResponse.fromJson(json.decode(str));

String mapsResponseToJson(MapDetailResponse data) => json.encode(data.toJson());

@HiveType(typeId: 27)
class MapDetailResponse {
  MapDetailResponse({
    this.status,
    this.data,
  });

  MapDetailResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = json['data'] != null ? MapsData.fromJson(json['data']) : null;
  }

  @HiveField(0)
  num? status;
  @HiveField(1)
  MapsData? data;

  MapDetailResponse copyWith({
    num? status,
    MapsData? data,
  }) =>
      MapDetailResponse(
        status: status ?? this.status,
        data: data ?? this.data,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    if (data != null) {
      map['data'] = data?.toJson();
    }
    return map;
  }
}
