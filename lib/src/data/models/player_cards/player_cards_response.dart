import 'dart:convert';

import 'package:hive_flutter/adapters.dart';

part 'player_cards_response.g.dart';


PlayerCardsResponse playerCardsResponseFromJson(String str) =>
    PlayerCardsResponse.fromJson(json.decode(str));

String playerCardsResponseToJson(PlayerCardsResponse data) =>
    json.encode(data.toJson());

@HiveType(typeId: 21)
class PlayerCardsResponse {
  PlayerCardsResponse({
    this.status,
    this.data,
  });

  PlayerCardsResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(PlayerCardsData.fromJson(v));
      });
    }
  }

  @HiveField(0)
  num? status;
  @HiveField(1)
  List<PlayerCardsData>? data;

  PlayerCardsResponse copyWith({
    num? status,
    List<PlayerCardsData>? data,
  }) =>
      PlayerCardsResponse(
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

PlayerCardsData dataFromJson(String str) =>
    PlayerCardsData.fromJson(json.decode(str));

String dataToJson(PlayerCardsData data) => json.encode(data.toJson());

@HiveType(typeId: 22)
class PlayerCardsData {
  PlayerCardsData({
    this.uuid,
    this.displayName,
    this.isHiddenIfNotOwned,
    this.themeUuid,
    this.displayIcon,
    this.smallArt,
    this.wideArt,
    this.largeArt,
    this.assetPath,
  });

  PlayerCardsData.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    displayName = json['displayName'];
    isHiddenIfNotOwned = json['isHiddenIfNotOwned'];
    themeUuid = json['themeUuid'];
    displayIcon = json['displayIcon'];
    smallArt = json['smallArt'];
    wideArt = json['wideArt'];
    largeArt = json['largeArt'];
    assetPath = json['assetPath'];
  }

  @HiveField(0)
  String? uuid;
  @HiveField(1)
  String? displayName;
  @HiveField(2)
  bool? isHiddenIfNotOwned;
  @HiveField(3)
  String? themeUuid;
  @HiveField(4)
  String? displayIcon;
  @HiveField(5)
  String? smallArt;
  @HiveField(6)
  String? wideArt;
  @HiveField(7)
  String? largeArt;
  @HiveField(8)
  String? assetPath;

  PlayerCardsData copyWith({
    String? uuid,
    String? displayName,
    bool? isHiddenIfNotOwned,
    String? themeUuid,
    String? displayIcon,
    String? smallArt,
    String? wideArt,
    String? largeArt,
    String? assetPath,
  }) =>
      PlayerCardsData(
        uuid: uuid ?? this.uuid,
        displayName: displayName ?? this.displayName,
        isHiddenIfNotOwned: isHiddenIfNotOwned ?? this.isHiddenIfNotOwned,
        themeUuid: themeUuid ?? this.themeUuid,
        displayIcon: displayIcon ?? this.displayIcon,
        smallArt: smallArt ?? this.smallArt,
        wideArt: wideArt ?? this.wideArt,
        largeArt: largeArt ?? this.largeArt,
        assetPath: assetPath ?? this.assetPath,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['uuid'] = uuid;
    map['displayName'] = displayName;
    map['isHiddenIfNotOwned'] = isHiddenIfNotOwned;
    map['themeUuid'] = themeUuid;
    map['displayIcon'] = displayIcon;
    map['smallArt'] = smallArt;
    map['wideArt'] = wideArt;
    map['largeArt'] = largeArt;
    map['assetPath'] = assetPath;
    return map;
  }
}
