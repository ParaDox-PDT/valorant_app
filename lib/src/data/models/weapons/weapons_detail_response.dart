import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:valorant_app/src/data/models/weapons/weapons_response.dart';

part 'weapons_detail_response.g.dart';

WeaponsDetailResponse weaponsDetailResponseFromJson(String str) =>
    WeaponsDetailResponse.fromJson(json.decode(str));

String weaponsDetailResponseToJson(WeaponsDetailResponse data) =>
    json.encode(data.toJson());

@HiveType(typeId: 14)
class WeaponsDetailResponse {
  WeaponsDetailResponse({
    this.status,
    this.data,
  });

  WeaponsDetailResponse.fromJson(json) {
    status = json['status'];
    data = json['data'] != null ? WeaponsData.fromJson(json['data']) : null;
  }

  num? status;
  WeaponsData? data;

  WeaponsDetailResponse copyWith({
    @HiveField(0) num? status,
    @HiveField(1) WeaponsData? data,
  }) =>
      WeaponsDetailResponse(
        status: status ?? this.status,
        data: data ?? this.data,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['data'] = data;
    return map;
  }
}
