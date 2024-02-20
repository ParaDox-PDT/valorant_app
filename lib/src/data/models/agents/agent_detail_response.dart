import 'dart:convert';
AgentDetail agentDetailFromJson(String str) => AgentDetail.fromJson(json.decode(str));
String agentDetailToJson(AgentDetail data) => json.encode(data.toJson());
class AgentDetail {
  AgentDetail({
      this.status, 
      this.data,});

  AgentDetail.fromJson(dynamic json) {
    status = json['status'];
    data = json['data'] != null ? AgentDetailData.fromJson(json['data']) : null;
  }
  int? status;
  AgentDetailData? data;
AgentDetail copyWith({  int? status,
  AgentDetailData? data,
}) => AgentDetail(  status: status ?? this.status,
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

AgentDetailData dataFromJson(String str) => AgentDetailData.fromJson(json.decode(str));
String dataToJson(AgentDetailData data) => json.encode(data.toJson());
class AgentDetailData {
  AgentDetailData({
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
      this.voiceLine,});

  AgentDetailData.fromJson(dynamic json) {
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
    backgroundGradientColors = json['backgroundGradientColors'] != null ? json['backgroundGradientColors'].cast<String>() : [];
    assetPath = json['assetPath'];
    isFullPortraitRightFacing = json['isFullPortraitRightFacing'];
    isPlayableCharacter = json['isPlayableCharacter'];
    isAvailableForTest = json['isAvailableForTest'];
    isBaseContent = json['isBaseContent'];
    role = json['role'] != null ? AgentDetailRole.fromJson(json['role']) : null;
    recruitmentData = json['recruitmentData'];
    if (json['abilities'] != null) {
      abilities = [];
      json['abilities'].forEach((v) {
        abilities?.add(AgentDetailAbilities.fromJson(v));
      });
    }
    voiceLine = json['voiceLine'];
  }
  String? uuid;
  String? displayName;
  String? description;
  String? developerName;
  dynamic characterTags;
  String? displayIcon;
  String? displayIconSmall;
  String? bustPortrait;
  String? fullPortrait;
  String? fullPortraitV2;
  String? killfeedPortrait;
  String? background;
  List<String>? backgroundGradientColors;
  String? assetPath;
  bool? isFullPortraitRightFacing;
  bool? isPlayableCharacter;
  bool? isAvailableForTest;
  bool? isBaseContent;
  AgentDetailRole? role;
  dynamic recruitmentData;
  List<AgentDetailAbilities>? abilities;
  dynamic voiceLine;
AgentDetailData copyWith({  String? uuid,
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
  AgentDetailRole? role,
  dynamic recruitmentData,
  List<AgentDetailAbilities>? abilities,
  dynamic voiceLine,
}) => AgentDetailData(  uuid: uuid ?? this.uuid,
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
  backgroundGradientColors: backgroundGradientColors ?? this.backgroundGradientColors,
  assetPath: assetPath ?? this.assetPath,
  isFullPortraitRightFacing: isFullPortraitRightFacing ?? this.isFullPortraitRightFacing,
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

AgentDetailAbilities abilitiesFromJson(String str) => AgentDetailAbilities.fromJson(json.decode(str));
String abilitiesToJson(AgentDetailAbilities data) => json.encode(data.toJson());
class AgentDetailAbilities {
  AgentDetailAbilities({
      this.slot, 
      this.displayName, 
      this.description, 
      this.displayIcon,});

  AgentDetailAbilities.fromJson(dynamic json) {
    slot = json['slot'];
    displayName = json['displayName'];
    description = json['description'];
    displayIcon = json['displayIcon'];
  }
  String? slot;
  String? displayName;
  String? description;
  String? displayIcon;
AgentDetailAbilities copyWith({  String? slot,
  String? displayName,
  String? description,
  String? displayIcon,
}) => AgentDetailAbilities(  slot: slot ?? this.slot,
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

AgentDetailRole roleFromJson(String str) => AgentDetailRole.fromJson(json.decode(str));
String roleToJson(AgentDetailRole data) => json.encode(data.toJson());
class AgentDetailRole {
  AgentDetailRole({
      this.uuid, 
      this.displayName, 
      this.description, 
      this.displayIcon, 
      this.assetPath,});

  AgentDetailRole.fromJson(dynamic json) {
    uuid = json['uuid'];
    displayName = json['displayName'];
    description = json['description'];
    displayIcon = json['displayIcon'];
    assetPath = json['assetPath'];
  }
  String? uuid;
  String? displayName;
  String? description;
  String? displayIcon;
  String? assetPath;
AgentDetailRole copyWith({  String? uuid,
  String? displayName,
  String? description,
  String? displayIcon,
  String? assetPath,
}) => AgentDetailRole(  uuid: uuid ?? this.uuid,
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