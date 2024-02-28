import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';

part 'ranks_response.g.dart';


RanksResponse ranksResponseFromJson(String str) =>
    RanksResponse.fromJson(json.decode(str));

String ranksResponseToJson(RanksResponse data) => json.encode(data.toJson());

@HiveType(typeId: 15)
class RanksResponse {
  RanksResponse({
    this.status,
    this.data,
  });

  RanksResponse.fromJson(dynamic json) {
    status = json['status'];
    data = json['data'] != null ? RanksData.fromJson(json['data']) : null;
  }

  @HiveField(0)
  num? status;
  @HiveField(1)
  RanksData? data;

  RanksResponse copyWith({
    num? status,
    RanksData? data,
  }) =>
      RanksResponse(
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

RanksData dataFromJson(String str) => RanksData.fromJson(json.decode(str));

String dataToJson(RanksData data) => json.encode(data.toJson());

@HiveType(typeId: 16)
class RanksData {
  RanksData({
    this.uuid,
    this.assetObjectName,
    this.tiers,
    this.assetPath,
  });

  RanksData.fromJson(dynamic json) {
    uuid = json['uuid'];
    assetObjectName = json['assetObjectName'];
    if (json['tiers'] != null) {
      tiers = [];
      json['tiers'].forEach((v) {
        tiers?.add(RanksTiers.fromJson(v));
      });
    }
    assetPath = json['assetPath'];
  }

  @HiveField(0)
  String? uuid;
  @HiveField(1)
  String? assetObjectName;
  @HiveField(2)
  List<RanksTiers>? tiers;
  @HiveField(3)
  String? assetPath;

  RanksData copyWith({
    String? uuid,
    String? assetObjectName,
    List<RanksTiers>? tiers,
    String? assetPath,
  }) =>
      RanksData(
        uuid: uuid ?? this.uuid,
        assetObjectName: assetObjectName ?? this.assetObjectName,
        tiers: tiers ?? this.tiers,
        assetPath: assetPath ?? this.assetPath,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['uuid'] = uuid;
    map['assetObjectName'] = assetObjectName;
    if (tiers != null) {
      map['tiers'] = tiers?.map((v) => v.toJson()).toList();
    }
    map['assetPath'] = assetPath;
    return map;
  }
}

RanksTiers tiersFromJson(String str) => RanksTiers.fromJson(json.decode(str));

String tiersToJson(RanksTiers data) => json.encode(data.toJson());

@HiveType(typeId: 17)
class RanksTiers {
  RanksTiers({
    this.tier,
    this.tierName,
    this.division,
    this.divisionName,
    this.color,
    this.backgroundColor,
    this.smallIcon,
    this.largeIcon,
    this.rankTriangleDownIcon,
    this.rankTriangleUpIcon,
  });

  RanksTiers.fromJson(dynamic json) {
    tier = json['tier'];
    tierName = json['tierName'];
    division = json['division'];
    divisionName = json['divisionName'];
    color = json['color'];
    backgroundColor = json['backgroundColor'];
    smallIcon = json['smallIcon'];
    largeIcon = json['largeIcon'];
    rankTriangleDownIcon = json['rankTriangleDownIcon'];
    rankTriangleUpIcon = json['rankTriangleUpIcon'];
  }

  @HiveField(0)
  num? tier;
  @HiveField(1)
  String? tierName;
  @HiveField(2)
  String? division;
  @HiveField(3)
  String? divisionName;
  @HiveField(4)
  String? color;
  @HiveField(5)
  String? backgroundColor;
  @HiveField(6)
  String? smallIcon;
  @HiveField(7)
  String? largeIcon;
  @HiveField(8)
  String? rankTriangleDownIcon;
  @HiveField(9)
  String? rankTriangleUpIcon;

  RanksTiers copyWith({
    num? tier,
    String? tierName,
    String? division,
    String? divisionName,
    String? color,
    String? backgroundColor,
    String? smallIcon,
    String? largeIcon,
    String? rankTriangleDownIcon,
    String? rankTriangleUpIcon,
  }) =>
      RanksTiers(
        tier: tier ?? this.tier,
        tierName: tierName ?? this.tierName,
        division: division ?? this.division,
        divisionName: divisionName ?? this.divisionName,
        color: color ?? this.color,
        backgroundColor: backgroundColor ?? this.backgroundColor,
        smallIcon: smallIcon ?? this.smallIcon,
        largeIcon: largeIcon ?? this.largeIcon,
        rankTriangleDownIcon: rankTriangleDownIcon ?? this.rankTriangleDownIcon,
        rankTriangleUpIcon: rankTriangleUpIcon ?? this.rankTriangleUpIcon,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['tier'] = tier;
    map['tierName'] = tierName;
    map['division'] = division;
    map['divisionName'] = divisionName;
    map['color'] = color;
    map['backgroundColor'] = backgroundColor;
    map['smallIcon'] = smallIcon;
    map['largeIcon'] = largeIcon;
    map['rankTriangleDownIcon'] = rankTriangleDownIcon;
    map['rankTriangleUpIcon'] = rankTriangleUpIcon;
    return map;
  }
}
