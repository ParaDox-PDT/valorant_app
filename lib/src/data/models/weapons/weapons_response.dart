import 'dart:convert';
WeaponsResponse weaponsResponseFromJson(String str) => WeaponsResponse.fromJson(json.decode(str));
String weaponsResponseToJson(WeaponsResponse data) => json.encode(data.toJson());
class WeaponsResponse {
  WeaponsResponse({
      this.uuid, 
      this.displayName, 
      this.category, 
      this.defaultSkinUuid, 
      this.displayIcon, 
      this.killStreamIcon, 
      this.assetPath, 
      this.weaponStats, 
      this.shopData, 
      this.skins,});

  WeaponsResponse.fromJson(dynamic json) {
    uuid = json['uuid'];
    displayName = json['displayName'];
    category = json['category'];
    defaultSkinUuid = json['defaultSkinUuid'];
    displayIcon = json['displayIcon'];
    killStreamIcon = json['killStreamIcon'];
    assetPath = json['assetPath'];
    weaponStats = json['weaponStats'] != null ? WeaponStats.fromJson(json['weaponStats']) : null;
    shopData = json['shopData'] != null ? ShopData.fromJson(json['shopData']) : null;
    if (json['skins'] != null) {
      skins = [];
      json['skins'].forEach((v) {
        skins?.add(Skins.fromJson(v));
      });
    }
  }
  String? uuid;
  String? displayName;
  String? category;
  String? defaultSkinUuid;
  String? displayIcon;
  String? killStreamIcon;
  String? assetPath;
  WeaponStats? weaponStats;
  ShopData? shopData;
  List<Skins>? skins;
WeaponsResponse copyWith({  String? uuid,
  String? displayName,
  String? category,
  String? defaultSkinUuid,
  String? displayIcon,
  String? killStreamIcon,
  String? assetPath,
  WeaponStats? weaponStats,
  ShopData? shopData,
  List<Skins>? skins,
}) => WeaponsResponse(  uuid: uuid ?? this.uuid,
  displayName: displayName ?? this.displayName,
  category: category ?? this.category,
  defaultSkinUuid: defaultSkinUuid ?? this.defaultSkinUuid,
  displayIcon: displayIcon ?? this.displayIcon,
  killStreamIcon: killStreamIcon ?? this.killStreamIcon,
  assetPath: assetPath ?? this.assetPath,
  weaponStats: weaponStats ?? this.weaponStats,
  shopData: shopData ?? this.shopData,
  skins: skins ?? this.skins,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['uuid'] = uuid;
    map['displayName'] = displayName;
    map['category'] = category;
    map['defaultSkinUuid'] = defaultSkinUuid;
    map['displayIcon'] = displayIcon;
    map['killStreamIcon'] = killStreamIcon;
    map['assetPath'] = assetPath;
    if (weaponStats != null) {
      map['weaponStats'] = weaponStats?.toJson();
    }
    if (shopData != null) {
      map['shopData'] = shopData?.toJson();
    }
    if (skins != null) {
      map['skins'] = skins?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

Skins skinsFromJson(String str) => Skins.fromJson(json.decode(str));
String skinsToJson(Skins data) => json.encode(data.toJson());
class Skins {
  Skins({
      this.uuid, 
      this.displayName, 
      this.themeUuid, 
      this.contentTierUuid, 
      this.displayIcon, 
      this.wallpaper, 
      this.assetPath, 
      this.chromas, 
      this.levels,});

  Skins.fromJson(dynamic json) {
    uuid = json['uuid'];
    displayName = json['displayName'];
    themeUuid = json['themeUuid'];
    contentTierUuid = json['contentTierUuid'];
    displayIcon = json['displayIcon'];
    wallpaper = json['wallpaper'];
    assetPath = json['assetPath'];
    if (json['chromas'] != null) {
      chromas = [];
      json['chromas'].forEach((v) {
        chromas?.add(Chromas.fromJson(v));
      });
    }
    if (json['levels'] != null) {
      levels = [];
      json['levels'].forEach((v) {
        levels?.add(Levels.fromJson(v));
      });
    }
  }
  String? uuid;
  String? displayName;
  String? themeUuid;
  String? contentTierUuid;
  String? displayIcon;
  dynamic wallpaper;
  String? assetPath;
  List<Chromas>? chromas;
  List<Levels>? levels;
Skins copyWith({  String? uuid,
  String? displayName,
  String? themeUuid,
  String? contentTierUuid,
  String? displayIcon,
  dynamic wallpaper,
  String? assetPath,
  List<Chromas>? chromas,
  List<Levels>? levels,
}) => Skins(  uuid: uuid ?? this.uuid,
  displayName: displayName ?? this.displayName,
  themeUuid: themeUuid ?? this.themeUuid,
  contentTierUuid: contentTierUuid ?? this.contentTierUuid,
  displayIcon: displayIcon ?? this.displayIcon,
  wallpaper: wallpaper ?? this.wallpaper,
  assetPath: assetPath ?? this.assetPath,
  chromas: chromas ?? this.chromas,
  levels: levels ?? this.levels,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['uuid'] = uuid;
    map['displayName'] = displayName;
    map['themeUuid'] = themeUuid;
    map['contentTierUuid'] = contentTierUuid;
    map['displayIcon'] = displayIcon;
    map['wallpaper'] = wallpaper;
    map['assetPath'] = assetPath;
    if (chromas != null) {
      map['chromas'] = chromas?.map((v) => v.toJson()).toList();
    }
    if (levels != null) {
      map['levels'] = levels?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

Levels levelsFromJson(String str) => Levels.fromJson(json.decode(str));
String levelsToJson(Levels data) => json.encode(data.toJson());
class Levels {
  Levels({
      this.uuid, 
      this.displayName, 
      this.levelItem, 
      this.displayIcon, 
      this.streamedVideo, 
      this.assetPath,});

  Levels.fromJson(dynamic json) {
    uuid = json['uuid'];
    displayName = json['displayName'];
    levelItem = json['levelItem'];
    displayIcon = json['displayIcon'];
    streamedVideo = json['streamedVideo'];
    assetPath = json['assetPath'];
  }
  String? uuid;
  String? displayName;
  dynamic levelItem;
  String? displayIcon;
  dynamic streamedVideo;
  String? assetPath;
Levels copyWith({  String? uuid,
  String? displayName,
  dynamic levelItem,
  String? displayIcon,
  dynamic streamedVideo,
  String? assetPath,
}) => Levels(  uuid: uuid ?? this.uuid,
  displayName: displayName ?? this.displayName,
  levelItem: levelItem ?? this.levelItem,
  displayIcon: displayIcon ?? this.displayIcon,
  streamedVideo: streamedVideo ?? this.streamedVideo,
  assetPath: assetPath ?? this.assetPath,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['uuid'] = uuid;
    map['displayName'] = displayName;
    map['levelItem'] = levelItem;
    map['displayIcon'] = displayIcon;
    map['streamedVideo'] = streamedVideo;
    map['assetPath'] = assetPath;
    return map;
  }

}

Chromas chromasFromJson(String str) => Chromas.fromJson(json.decode(str));
String chromasToJson(Chromas data) => json.encode(data.toJson());
class Chromas {
  Chromas({
      this.uuid, 
      this.displayName, 
      this.displayIcon, 
      this.fullRender, 
      this.swatch, 
      this.streamedVideo, 
      this.assetPath,});

  Chromas.fromJson(dynamic json) {
    uuid = json['uuid'];
    displayName = json['displayName'];
    displayIcon = json['displayIcon'];
    fullRender = json['fullRender'];
    swatch = json['swatch'];
    streamedVideo = json['streamedVideo'];
    assetPath = json['assetPath'];
  }
  String? uuid;
  String? displayName;
  dynamic displayIcon;
  String? fullRender;
  dynamic swatch;
  dynamic streamedVideo;
  String? assetPath;
Chromas copyWith({  String? uuid,
  String? displayName,
  dynamic displayIcon,
  String? fullRender,
  dynamic swatch,
  dynamic streamedVideo,
  String? assetPath,
}) => Chromas(  uuid: uuid ?? this.uuid,
  displayName: displayName ?? this.displayName,
  displayIcon: displayIcon ?? this.displayIcon,
  fullRender: fullRender ?? this.fullRender,
  swatch: swatch ?? this.swatch,
  streamedVideo: streamedVideo ?? this.streamedVideo,
  assetPath: assetPath ?? this.assetPath,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['uuid'] = uuid;
    map['displayName'] = displayName;
    map['displayIcon'] = displayIcon;
    map['fullRender'] = fullRender;
    map['swatch'] = swatch;
    map['streamedVideo'] = streamedVideo;
    map['assetPath'] = assetPath;
    return map;
  }

}

ShopData shopDataFromJson(String str) => ShopData.fromJson(json.decode(str));
String shopDataToJson(ShopData data) => json.encode(data.toJson());
class ShopData {
  ShopData({
      this.cost, 
      this.category, 
      this.shopOrderPriority, 
      this.categoryText, 
      this.gridPosition, 
      this.canBeTrashed, 
      this.image, 
      this.newImage, 
      this.newImage2, 
      this.assetPath,});

  ShopData.fromJson(dynamic json) {
    cost = json['cost'];
    category = json['category'];
    shopOrderPriority = json['shopOrderPriority'];
    categoryText = json['categoryText'];
    gridPosition = json['gridPosition'] != null ? GridPosition.fromJson(json['gridPosition']) : null;
    canBeTrashed = json['canBeTrashed'];
    image = json['image'];
    newImage = json['newImage'];
    newImage2 = json['newImage2'];
    assetPath = json['assetPath'];
  }
  int? cost;
  String? category;
  int? shopOrderPriority;
  String? categoryText;
  GridPosition? gridPosition;
  bool? canBeTrashed;
  dynamic image;
  String? newImage;
  dynamic newImage2;
  String? assetPath;
ShopData copyWith({  int? cost,
  String? category,
  int? shopOrderPriority,
  String? categoryText,
  GridPosition? gridPosition,
  bool? canBeTrashed,
  dynamic image,
  String? newImage,
  dynamic newImage2,
  String? assetPath,
}) => ShopData(  cost: cost ?? this.cost,
  category: category ?? this.category,
  shopOrderPriority: shopOrderPriority ?? this.shopOrderPriority,
  categoryText: categoryText ?? this.categoryText,
  gridPosition: gridPosition ?? this.gridPosition,
  canBeTrashed: canBeTrashed ?? this.canBeTrashed,
  image: image ?? this.image,
  newImage: newImage ?? this.newImage,
  newImage2: newImage2 ?? this.newImage2,
  assetPath: assetPath ?? this.assetPath,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['cost'] = cost;
    map['category'] = category;
    map['shopOrderPriority'] = shopOrderPriority;
    map['categoryText'] = categoryText;
    if (gridPosition != null) {
      map['gridPosition'] = gridPosition?.toJson();
    }
    map['canBeTrashed'] = canBeTrashed;
    map['image'] = image;
    map['newImage'] = newImage;
    map['newImage2'] = newImage2;
    map['assetPath'] = assetPath;
    return map;
  }

}

GridPosition gridPositionFromJson(String str) => GridPosition.fromJson(json.decode(str));
String gridPositionToJson(GridPosition data) => json.encode(data.toJson());
class GridPosition {
  GridPosition({
      this.row, 
      this.column,});

  GridPosition.fromJson(dynamic json) {
    row = json['row'];
    column = json['column'];
  }
  int? row;
  int? column;
GridPosition copyWith({  int? row,
  int? column,
}) => GridPosition(  row: row ?? this.row,
  column: column ?? this.column,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['row'] = row;
    map['column'] = column;
    return map;
  }

}

WeaponStats weaponStatsFromJson(String str) => WeaponStats.fromJson(json.decode(str));
String weaponStatsToJson(WeaponStats data) => json.encode(data.toJson());
class WeaponStats {
  WeaponStats({
      this.fireRate, 
      this.magazineSize, 
      this.runSpeedMultiplier, 
      this.equipTimeSeconds, 
      this.reloadTimeSeconds, 
      this.firstBulletAccuracy, 
      this.shotgunPelletCount, 
      this.wallPenetration, 
      this.feature, 
      this.fireMode, 
      this.altFireType, 
      this.adsStats, 
      this.altShotgunStats, 
      this.airBurstStats, 
      this.damageRanges,});

  WeaponStats.fromJson(dynamic json) {
    fireRate = json['fireRate'];
    magazineSize = json['magazineSize'];
    runSpeedMultiplier = json['runSpeedMultiplier'];
    equipTimeSeconds = json['equipTimeSeconds'];
    reloadTimeSeconds = json['reloadTimeSeconds'];
    firstBulletAccuracy = json['firstBulletAccuracy'];
    shotgunPelletCount = json['shotgunPelletCount'];
    wallPenetration = json['wallPenetration'];
    feature = json['feature'];
    fireMode = json['fireMode'];
    altFireType = json['altFireType'];
    adsStats = json['adsStats'] != null ? AdsStats.fromJson(json['adsStats']) : null;
    altShotgunStats = json['altShotgunStats'];
    airBurstStats = json['airBurstStats'];
    if (json['damageRanges'] != null) {
      damageRanges = [];
      json['damageRanges'].forEach((v) {
        damageRanges?.add(DamageRanges.fromJson(v));
      });
    }
  }
  int? fireRate;
  int? magazineSize;
  double? runSpeedMultiplier;
  double? equipTimeSeconds;
  int? reloadTimeSeconds;
  double? firstBulletAccuracy;
  int? shotgunPelletCount;
  String? wallPenetration;
  String? feature;
  dynamic fireMode;
  String? altFireType;
  AdsStats? adsStats;
  dynamic altShotgunStats;
  dynamic airBurstStats;
  List<DamageRanges>? damageRanges;
WeaponStats copyWith({  int? fireRate,
  int? magazineSize,
  double? runSpeedMultiplier,
  double? equipTimeSeconds,
  int? reloadTimeSeconds,
  double? firstBulletAccuracy,
  int? shotgunPelletCount,
  String? wallPenetration,
  String? feature,
  dynamic fireMode,
  String? altFireType,
  AdsStats? adsStats,
  dynamic altShotgunStats,
  dynamic airBurstStats,
  List<DamageRanges>? damageRanges,
}) => WeaponStats(  fireRate: fireRate ?? this.fireRate,
  magazineSize: magazineSize ?? this.magazineSize,
  runSpeedMultiplier: runSpeedMultiplier ?? this.runSpeedMultiplier,
  equipTimeSeconds: equipTimeSeconds ?? this.equipTimeSeconds,
  reloadTimeSeconds: reloadTimeSeconds ?? this.reloadTimeSeconds,
  firstBulletAccuracy: firstBulletAccuracy ?? this.firstBulletAccuracy,
  shotgunPelletCount: shotgunPelletCount ?? this.shotgunPelletCount,
  wallPenetration: wallPenetration ?? this.wallPenetration,
  feature: feature ?? this.feature,
  fireMode: fireMode ?? this.fireMode,
  altFireType: altFireType ?? this.altFireType,
  adsStats: adsStats ?? this.adsStats,
  altShotgunStats: altShotgunStats ?? this.altShotgunStats,
  airBurstStats: airBurstStats ?? this.airBurstStats,
  damageRanges: damageRanges ?? this.damageRanges,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['fireRate'] = fireRate;
    map['magazineSize'] = magazineSize;
    map['runSpeedMultiplier'] = runSpeedMultiplier;
    map['equipTimeSeconds'] = equipTimeSeconds;
    map['reloadTimeSeconds'] = reloadTimeSeconds;
    map['firstBulletAccuracy'] = firstBulletAccuracy;
    map['shotgunPelletCount'] = shotgunPelletCount;
    map['wallPenetration'] = wallPenetration;
    map['feature'] = feature;
    map['fireMode'] = fireMode;
    map['altFireType'] = altFireType;
    if (adsStats != null) {
      map['adsStats'] = adsStats?.toJson();
    }
    map['altShotgunStats'] = altShotgunStats;
    map['airBurstStats'] = airBurstStats;
    if (damageRanges != null) {
      map['damageRanges'] = damageRanges?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

DamageRanges damageRangesFromJson(String str) => DamageRanges.fromJson(json.decode(str));
String damageRangesToJson(DamageRanges data) => json.encode(data.toJson());
class DamageRanges {
  DamageRanges({
      this.rangeStartMeters, 
      this.rangeEndMeters, 
      this.headDamage, 
      this.bodyDamage, 
      this.legDamage,});

  DamageRanges.fromJson(dynamic json) {
    rangeStartMeters = json['rangeStartMeters'];
    rangeEndMeters = json['rangeEndMeters'];
    headDamage = json['headDamage'];
    bodyDamage = json['bodyDamage'];
    legDamage = json['legDamage'];
  }
  int? rangeStartMeters;
  int? rangeEndMeters;
  double? headDamage;
  int? bodyDamage;
  double? legDamage;
DamageRanges copyWith({  int? rangeStartMeters,
  int? rangeEndMeters,
  double? headDamage,
  int? bodyDamage,
  double? legDamage,
}) => DamageRanges(  rangeStartMeters: rangeStartMeters ?? this.rangeStartMeters,
  rangeEndMeters: rangeEndMeters ?? this.rangeEndMeters,
  headDamage: headDamage ?? this.headDamage,
  bodyDamage: bodyDamage ?? this.bodyDamage,
  legDamage: legDamage ?? this.legDamage,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['rangeStartMeters'] = rangeStartMeters;
    map['rangeEndMeters'] = rangeEndMeters;
    map['headDamage'] = headDamage;
    map['bodyDamage'] = bodyDamage;
    map['legDamage'] = legDamage;
    return map;
  }

}

AdsStats adsStatsFromJson(String str) => AdsStats.fromJson(json.decode(str));
String adsStatsToJson(AdsStats data) => json.encode(data.toJson());
class AdsStats {
  AdsStats({
      this.zoomMultiplier, 
      this.fireRate, 
      this.runSpeedMultiplier, 
      this.burstCount, 
      this.firstBulletAccuracy,});

  AdsStats.fromJson(dynamic json) {
    zoomMultiplier = json['zoomMultiplier'];
    fireRate = json['fireRate'];
    runSpeedMultiplier = json['runSpeedMultiplier'];
    burstCount = json['burstCount'];
    firstBulletAccuracy = json['firstBulletAccuracy'];
  }
  double? zoomMultiplier;
  double? fireRate;
  double? runSpeedMultiplier;
  int? burstCount;
  double? firstBulletAccuracy;
AdsStats copyWith({  double? zoomMultiplier,
  double? fireRate,
  double? runSpeedMultiplier,
  int? burstCount,
  double? firstBulletAccuracy,
}) => AdsStats(  zoomMultiplier: zoomMultiplier ?? this.zoomMultiplier,
  fireRate: fireRate ?? this.fireRate,
  runSpeedMultiplier: runSpeedMultiplier ?? this.runSpeedMultiplier,
  burstCount: burstCount ?? this.burstCount,
  firstBulletAccuracy: firstBulletAccuracy ?? this.firstBulletAccuracy,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['zoomMultiplier'] = zoomMultiplier;
    map['fireRate'] = fireRate;
    map['runSpeedMultiplier'] = runSpeedMultiplier;
    map['burstCount'] = burstCount;
    map['firstBulletAccuracy'] = firstBulletAccuracy;
    return map;
  }

}