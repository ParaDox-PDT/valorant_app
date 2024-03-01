import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';

part 'sprays_response.g.dart';

SpraysResponse spraysResponseFromJson(String str) =>
    SpraysResponse.fromJson(json.decode(str));

String spraysResponseToJson(SpraysResponse data) => json.encode(data.toJson());

@HiveType(typeId: 18)
class SpraysResponse {
  SpraysResponse({
    this.status,
    this.data,
  });

  SpraysResponse.fromJson(dynamic json) {
    status = json['status'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(SpraysData.fromJson(v));
      });
    }
  }

  @HiveField(0)
  num? status;
  @HiveField(1)
  List<SpraysData>? data;

  SpraysResponse copyWith({
    num? status,
    List<SpraysData>? data,
  }) =>
      SpraysResponse(
        status: status ?? this.status,
        data: data ?? this.data,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

SpraysData dataFromJson(String str) => SpraysData.fromJson(json.decode(str));

String dataToJson(SpraysData data) => json.encode(data.toJson());

@HiveType(typeId: 19)
class SpraysData {
  SpraysData({
    this.uuid,
    this.displayName,
    this.category,
    this.themeUuid,
    this.isNullSpray,
    this.hideIfNotOwned,
    this.displayIcon,
    this.fullIcon,
    this.fullTransparentIcon,
    this.animationPng,
    this.animationGif,
    this.assetPath,
    this.levels,
  });

  SpraysData.fromJson(dynamic json) {
    uuid = json['uuid'];
    displayName = json['displayName'];
    category = json['category'];
    themeUuid = json['themeUuid'];
    isNullSpray = json['isNullSpray'];
    hideIfNotOwned = json['hideIfNotOwned'];
    displayIcon = json['displayIcon'];
    fullIcon = json['fullIcon'];
    fullTransparentIcon = json['fullTransparentIcon'];
    animationPng = json['animationPng'];
    animationGif = json['animationGif'];
    assetPath = json['assetPath'];
    if (json['levels'] != null) {
      levels = [];
      json['levels'].forEach((v) {
        levels?.add(SpraysLevels.fromJson(v));
      });
    }
  }

  @HiveField(0)
  String? uuid;
  @HiveField(1)
  String? displayName;
  @HiveField(2)
  dynamic category;
  @HiveField(3)
  dynamic themeUuid;
  @HiveField(4)
  bool? isNullSpray;
  @HiveField(5)
  bool? hideIfNotOwned;
  @HiveField(6)
  String? displayIcon;
  @HiveField(7)
  String? fullIcon;
  @HiveField(8)
  String? fullTransparentIcon;
  @HiveField(9)
  dynamic animationPng;
  @HiveField(10)
  dynamic animationGif;
  @HiveField(11)
  String? assetPath;
  @HiveField(12)
  List<SpraysLevels>? levels;

  SpraysData copyWith({
    String? uuid,
    String? displayName,
    dynamic category,
    dynamic themeUuid,
    bool? isNullSpray,
    bool? hideIfNotOwned,
    String? displayIcon,
    String? fullIcon,
    String? fullTransparentIcon,
    dynamic animationPng,
    dynamic animationGif,
    String? assetPath,
    List<SpraysLevels>? levels,
  }) =>
      SpraysData(
        uuid: uuid ?? this.uuid,
        displayName: displayName ?? this.displayName,
        category: category ?? this.category,
        themeUuid: themeUuid ?? this.themeUuid,
        isNullSpray: isNullSpray ?? this.isNullSpray,
        hideIfNotOwned: hideIfNotOwned ?? this.hideIfNotOwned,
        displayIcon: displayIcon ?? this.displayIcon,
        fullIcon: fullIcon ?? this.fullIcon,
        fullTransparentIcon: fullTransparentIcon ?? this.fullTransparentIcon,
        animationPng: animationPng ?? this.animationPng,
        animationGif: animationGif ?? this.animationGif,
        assetPath: assetPath ?? this.assetPath,
        levels: levels ?? this.levels,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['uuid'] = uuid;
    map['displayName'] = displayName;
    map['category'] = category;
    map['themeUuid'] = themeUuid;
    map['isNullSpray'] = isNullSpray;
    map['hideIfNotOwned'] = hideIfNotOwned;
    map['displayIcon'] = displayIcon;
    map['fullIcon'] = fullIcon;
    map['fullTransparentIcon'] = fullTransparentIcon;
    map['animationPng'] = animationPng;
    map['animationGif'] = animationGif;
    map['assetPath'] = assetPath;
    if (levels != null) {
      map['levels'] = levels?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

SpraysLevels levelsFromJson(String str) =>
    SpraysLevels.fromJson(json.decode(str));

String levelsToJson(SpraysLevels data) => json.encode(data.toJson());

@HiveType(typeId: 20)
class SpraysLevels {
  SpraysLevels({
    this.uuid,
    this.sprayLevel,
    this.displayName,
    this.displayIcon,
    this.assetPath,
  });

  SpraysLevels.fromJson(dynamic json) {
    uuid = json['uuid'];
    sprayLevel = json['sprayLevel'];
    displayName = json['displayName'];
    displayIcon = json['displayIcon'];
    assetPath = json['assetPath'];
  }

  @HiveField(0)
  String? uuid;
  @HiveField(1)
  num? sprayLevel;
  @HiveField(2)
  String? displayName;
  @HiveField(3)
  String? displayIcon;
  @HiveField(4)
  String? assetPath;

  SpraysLevels copyWith({
    String? uuid,
    num? sprayLevel,
    String? displayName,
    String? displayIcon,
    String? assetPath,
  }) =>
      SpraysLevels(
        uuid: uuid ?? this.uuid,
        sprayLevel: sprayLevel ?? this.sprayLevel,
        displayName: displayName ?? this.displayName,
        displayIcon: displayIcon ?? this.displayIcon,
        assetPath: assetPath ?? this.assetPath,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['uuid'] = uuid;
    map['sprayLevel'] = sprayLevel;
    map['displayName'] = displayName;
    map['displayIcon'] = displayIcon;
    map['assetPath'] = assetPath;
    return map;
  }
}
