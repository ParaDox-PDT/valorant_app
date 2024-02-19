import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';

part 'agents_response.g.dart';

Agents agentsFromJson(String str) => Agents.fromJson(json.decode(str));

String agentsToJson(Agents data) => json.encode(data.toJson());

@HiveType(typeId: 0)
class Agents {
  Agents({
    this.status,
    this.data,
  });

  Agents.fromJson(dynamic json) {
    status = json['status'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(AgentsData.fromJson(v));
      });
    }
  }

  @HiveField(0)
  int? status;
  @HiveField(1)
  List<AgentsData>? data;

  Agents copyWith({
    int? status,
    List<AgentsData>? data,
  }) =>
      Agents(
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

AgentsData dataFromJson(String str) => AgentsData.fromJson(json.decode(str));

String dataToJson(AgentsData data) => json.encode(data.toJson());

@HiveType(typeId: 1)
class AgentsData {
  AgentsData({
    this.uuid,
    this.displayName,
    this.description,
    this.developerName,
    this.characterTags,
    this.displayIcon,
    this.displayIconSmall,
    this.bustPortrait,
    this.fullPortrait,
    this.fullPortraitV2,
    this.killfeedPortrait,
    this.background,
    this.backgroundGradientColors,
    this.assetPath,
    this.isFullPortraitRightFacing,
    this.isPlayableCharacter,
    this.isAvailableForTest,
    this.isBaseContent,
    this.role,
    this.recruitmentData,
    this.abilities,
    this.voiceLine,
  });

  AgentsData.fromJson(dynamic json) {
    uuid = json['uuid'];
    displayName = json['displayName'];
    description = json['description'];
    developerName = json['developerName'];
    characterTags = json['characterTags'];
    displayIcon = json['displayIcon'];
    displayIconSmall = json['displayIconSmall'];
    bustPortrait = json['bustPortrait'];
    fullPortrait = json['fullPortrait'];
    fullPortraitV2 = json['fullPortraitV2'];
    killfeedPortrait = json['killfeedPortrait'];
    background = json['background'];
    backgroundGradientColors = json['backgroundGradientColors'] != null
        ? json['backgroundGradientColors'].cast<String>()
        : [];
    assetPath = json['assetPath'];
    isFullPortraitRightFacing = json['isFullPortraitRightFacing'];
    isPlayableCharacter = json['isPlayableCharacter'];
    isAvailableForTest = json['isAvailableForTest'];
    isBaseContent = json['isBaseContent'];
    role = json['role'] != null ? AgentsRole.fromJson(json['role']) : null;
    recruitmentData = json['recruitmentData'];
    if (json['abilities'] != null) {
      abilities = [];
      json['abilities'].forEach((v) {
        abilities?.add(AgentsAbilities.fromJson(v));
      });
    }
    voiceLine = json['voiceLine'];
  }

  @HiveField(0)
  String? uuid;
  @HiveField(1)
  String? displayName;
  @HiveField(2)
  String? description;
  @HiveField(3)
  String? developerName;
  @HiveField(4)
  dynamic characterTags;
  @HiveField(5)
  String? displayIcon;
  @HiveField(6)
  String? displayIconSmall;
  @HiveField(7)
  String? bustPortrait;
  @HiveField(8)
  String? fullPortrait;
  @HiveField(9)
  String? fullPortraitV2;
  @HiveField(10)
  String? killfeedPortrait;
  @HiveField(11)
  String? background;
  @HiveField(12)
  List<String>? backgroundGradientColors;
  @HiveField(13)
  String? assetPath;
  @HiveField(14)
  bool? isFullPortraitRightFacing;
  @HiveField(15)
  bool? isPlayableCharacter;
  @HiveField(16)
  bool? isAvailableForTest;
  @HiveField(17)
  bool? isBaseContent;
  @HiveField(18)
  AgentsRole? role;
  @HiveField(19)
  dynamic recruitmentData;
  @HiveField(20)
  List<AgentsAbilities>? abilities;
  @HiveField(21)
  dynamic voiceLine;

  AgentsData copyWith({
    String? uuid,
    String? displayName,
    String? description,
    String? developerName,
    dynamic characterTags,
    String? displayIcon,
    String? displayIconSmall,
    String? bustPortrait,
    String? fullPortrait,
    String? fullPortraitV2,
    String? killfeedPortrait,
    String? background,
    List<String>? backgroundGradientColors,
    String? assetPath,
    bool? isFullPortraitRightFacing,
    bool? isPlayableCharacter,
    bool? isAvailableForTest,
    bool? isBaseContent,
    AgentsRole? role,
    dynamic recruitmentData,
    List<AgentsAbilities>? abilities,
    dynamic voiceLine,
  }) =>
      AgentsData(
        uuid: uuid ?? this.uuid,
        displayName: displayName ?? this.displayName,
        description: description ?? this.description,
        developerName: developerName ?? this.developerName,
        characterTags: characterTags ?? this.characterTags,
        displayIcon: displayIcon ?? this.displayIcon,
        displayIconSmall: displayIconSmall ?? this.displayIconSmall,
        bustPortrait: bustPortrait ?? this.bustPortrait,
        fullPortrait: fullPortrait ?? this.fullPortrait,
        fullPortraitV2: fullPortraitV2 ?? this.fullPortraitV2,
        killfeedPortrait: killfeedPortrait ?? this.killfeedPortrait,
        background: background ?? this.background,
        backgroundGradientColors:
            backgroundGradientColors ?? this.backgroundGradientColors,
        assetPath: assetPath ?? this.assetPath,
        isFullPortraitRightFacing:
            isFullPortraitRightFacing ?? this.isFullPortraitRightFacing,
        isPlayableCharacter: isPlayableCharacter ?? this.isPlayableCharacter,
        isAvailableForTest: isAvailableForTest ?? this.isAvailableForTest,
        isBaseContent: isBaseContent ?? this.isBaseContent,
        role: role ?? this.role,
        recruitmentData: recruitmentData ?? this.recruitmentData,
        abilities: abilities ?? this.abilities,
        voiceLine: voiceLine ?? this.voiceLine,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['uuid'] = uuid;
    map['displayName'] = displayName;
    map['description'] = description;
    map['developerName'] = developerName;
    map['characterTags'] = characterTags;
    map['displayIcon'] = displayIcon;
    map['displayIconSmall'] = displayIconSmall;
    map['bustPortrait'] = bustPortrait;
    map['fullPortrait'] = fullPortrait;
    map['fullPortraitV2'] = fullPortraitV2;
    map['killfeedPortrait'] = killfeedPortrait;
    map['background'] = background;
    map['backgroundGradientColors'] = backgroundGradientColors;
    map['assetPath'] = assetPath;
    map['isFullPortraitRightFacing'] = isFullPortraitRightFacing;
    map['isPlayableCharacter'] = isPlayableCharacter;
    map['isAvailableForTest'] = isAvailableForTest;
    map['isBaseContent'] = isBaseContent;
    if (role != null) {
      map['role'] = role?.toJson();
    }
    map['recruitmentData'] = recruitmentData;
    if (abilities != null) {
      map['abilities'] = abilities?.map((v) => v.toJson()).toList();
    }
    map['voiceLine'] = voiceLine;
    return map;
  }
}

AgentsAbilities abilitiesFromJson(String str) => AgentsAbilities.fromJson(json.decode(str));

String abilitiesToJson(AgentsAbilities data) => json.encode(data.toJson());

@HiveType(typeId: 2)
class AgentsAbilities {
  AgentsAbilities({
    this.slot,
    this.displayName,
    this.description,
    this.displayIcon,
  });

  AgentsAbilities.fromJson(dynamic json) {
    slot = json['slot'];
    displayName = json['displayName'];
    description = json['description'];
    displayIcon = json['displayIcon'];
  }

  @HiveField(0)
  String? slot;

  @HiveField(1)
  String? displayName;
  @HiveField(2)
  String? description;
  @HiveField(3)
  String? displayIcon;

  AgentsAbilities copyWith({
    String? slot,
    String? displayName,
    String? description,
    String? displayIcon,
  }) =>
      AgentsAbilities(
        slot: slot ?? this.slot,
        displayName: displayName ?? this.displayName,
        description: description ?? this.description,
        displayIcon: displayIcon ?? this.displayIcon,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['slot'] = slot;
    map['displayName'] = displayName;
    map['description'] = description;
    map['displayIcon'] = displayIcon;
    return map;
  }
}

AgentsRole roleFromJson(String str) => AgentsRole.fromJson(json.decode(str));

String roleToJson(AgentsRole data) => json.encode(data.toJson());

@HiveType(typeId: 3)
class AgentsRole {
  AgentsRole({
    this.uuid,
    this.displayName,
    this.description,
    this.displayIcon,
    this.assetPath,
  });

  AgentsRole.fromJson(dynamic json) {
    uuid = json['uuid'];
    displayName = json['displayName'];
    description = json['description'];
    displayIcon = json['displayIcon'];
    assetPath = json['assetPath'];
  }

  @HiveField(0)
  String? uuid;
  @HiveField(1)
  String? displayName;
  @HiveField(2)
  String? description;
  @HiveField(3)
  String? displayIcon;
  @HiveField(4)
  String? assetPath;

  AgentsRole copyWith({
    String? uuid,
    String? displayName,
    String? description,
    String? displayIcon,
    String? assetPath,
  }) =>
      AgentsRole(
        uuid: uuid ?? this.uuid,
        displayName: displayName ?? this.displayName,
        description: description ?? this.description,
        displayIcon: displayIcon ?? this.displayIcon,
        assetPath: assetPath ?? this.assetPath,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['uuid'] = uuid;
    map['displayName'] = displayName;
    map['description'] = description;
    map['displayIcon'] = displayIcon;
    map['assetPath'] = assetPath;
    return map;
  }
}
