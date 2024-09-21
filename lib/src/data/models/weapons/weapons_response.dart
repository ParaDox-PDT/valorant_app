import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';

part 'weapons_response.g.dart';

WeaponsResponse weaponsResponseFromJson(String str) =>
    WeaponsResponse.fromJson(json.decode(str));

String weaponsResponseToJson(WeaponsResponse data) =>
    json.encode(data.toJson());

@HiveType(typeId: 4)
class WeaponsResponse {
  WeaponsResponse({
    this.status,
    this.data,
  });

  WeaponsResponse.fromJson(json) {
    status = json['status'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(WeaponsData.fromJson(v));
      });
    }
  }

  @HiveField(0)
  num? status;
  @HiveField(1)
  List<WeaponsData>? data;

  WeaponsResponse copyWith({
    num? status,
    List<WeaponsData>? data,
  }) =>
      WeaponsResponse(
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

WeaponsData dataFromJson(String str) => WeaponsData.fromJson(json.decode(str));

String dataToJson(WeaponsData data) => json.encode(data.toJson());

@HiveType(typeId: 5)
class WeaponsData {
  WeaponsData({
    this.uuid,
    this.displayName,
    this.category,
    this.defaultSkinUuid,
    this.displayIcon,
    this.killStreamIcon,
    this.assetPath,
    this.weaponStats,
    this.shopData,
    this.skins,
  });

  WeaponsData.fromJson(json) {
    uuid = json['uuid'];
    displayName = json['displayName'];
    category = json['category'];
    defaultSkinUuid = json['defaultSkinUuid'];
    displayIcon = json['displayIcon'];
    killStreamIcon = json['killStreamIcon'];
    assetPath = json['assetPath'];
    weaponStats = json['weaponStats'] != null
        ? WeaponsStats.fromJson(json['weaponStats'])
        : null;
    shopData = json['shopData'] != null
        ? WeaponsShopData.fromJson(json['shopData'])
        : null;
    if (json['skins'] != null) {
      skins = [];
      json['skins'].forEach((v) {
        skins?.add(WeaponsSkins.fromJson(v));
      });
    }
  }

  @HiveField(0)
  String? uuid;
  @HiveField(1)
  String? displayName;
  @HiveField(2)
  String? category;
  @HiveField(3)
  String? defaultSkinUuid;
  @HiveField(4)
  String? displayIcon;
  @HiveField(5)
  String? killStreamIcon;
  @HiveField(6)
  String? assetPath;
  @HiveField(7)
  WeaponsStats? weaponStats;
  @HiveField(8)
  WeaponsShopData? shopData;
  @HiveField(9)
  List<WeaponsSkins>? skins;

  WeaponsData copyWith({
    String? uuid,
    String? displayName,
    String? category,
    String? defaultSkinUuid,
    String? displayIcon,
    String? killStreamIcon,
    String? assetPath,
    WeaponsStats? weaponStats,
    WeaponsShopData? shopData,
    List<WeaponsSkins>? skins,
  }) =>
      WeaponsData(
        uuid: uuid ?? this.uuid,
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

WeaponsSkins skinsFromJson(String str) =>
    WeaponsSkins.fromJson(json.decode(str));

String skinsToJson(WeaponsSkins data) => json.encode(data.toJson());

@HiveType(typeId: 6)
class WeaponsSkins {
  WeaponsSkins({
    this.uuid,
    this.displayName,
    this.themeUuid,
    this.contentTierUuid,
    this.displayIcon,
    this.wallpaper,
    this.assetPath,
    this.chromas,
    this.levels,
  });

  WeaponsSkins.fromJson(json) {
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
        chromas?.add(WeaponsChromas.fromJson(v));
      });
    }
    if (json['levels'] != null) {
      levels = [];
      json['levels'].forEach((v) {
        levels?.add(WeaponsLevels.fromJson(v));
      });
    }
  }

  @HiveField(0)
  String? uuid;
  @HiveField(1)
  String? displayName;
  @HiveField(2)
  String? themeUuid;
  @HiveField(3)
  String? contentTierUuid;
  @HiveField(4)
  String? displayIcon;
  @HiveField(5)
  dynamic wallpaper;
  @HiveField(6)
  String? assetPath;
  @HiveField(7)
  List<WeaponsChromas>? chromas;
  @HiveField(8)
  List<WeaponsLevels>? levels;

  WeaponsSkins copyWith({
    String? uuid,
    String? displayName,
    String? themeUuid,
    String? contentTierUuid,
    String? displayIcon,
    dynamic wallpaper,
    String? assetPath,
    List<WeaponsChromas>? chromas,
    List<WeaponsLevels>? levels,
  }) =>
      WeaponsSkins(
        uuid: uuid ?? this.uuid,
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

WeaponsLevels levelsFromJson(String str) =>
    WeaponsLevels.fromJson(json.decode(str));

String levelsToJson(WeaponsLevels data) => json.encode(data.toJson());

@HiveType(typeId: 7)
class WeaponsLevels {
  WeaponsLevels({
    this.uuid,
    this.displayName,
    this.levelItem,
    this.displayIcon,
    this.streamedVideo,
    this.assetPath,
  });

  WeaponsLevels.fromJson(json) {
    uuid = json['uuid'];
    displayName = json['displayName'];
    levelItem = json['levelItem'];
    displayIcon = json['displayIcon'];
    streamedVideo = json['streamedVideo'];
    assetPath = json['assetPath'];
  }

  @HiveField(0)
  String? uuid;
  @HiveField(1)
  String? displayName;
  @HiveField(2)
  dynamic levelItem;
  @HiveField(3)
  String? displayIcon;
  @HiveField(4)
  dynamic streamedVideo;
  @HiveField(5)
  String? assetPath;

  WeaponsLevels copyWith({
    String? uuid,
    String? displayName,
    dynamic levelItem,
    String? displayIcon,
    dynamic streamedVideo,
    String? assetPath,
  }) =>
      WeaponsLevels(
        uuid: uuid ?? this.uuid,
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

WeaponsChromas chromasFromJson(String str) =>
    WeaponsChromas.fromJson(json.decode(str));

String chromasToJson(WeaponsChromas data) => json.encode(data.toJson());

@HiveType(typeId: 8)
class WeaponsChromas {
  WeaponsChromas({
    this.uuid,
    this.displayName,
    this.displayIcon,
    this.fullRender,
    this.swatch,
    this.streamedVideo,
    this.assetPath,
  });

  WeaponsChromas.fromJson(json) {
    uuid = json['uuid'];
    displayName = json['displayName'];
    displayIcon = json['displayIcon'];
    fullRender = json['fullRender'];
    swatch = json['swatch'];
    streamedVideo = json['streamedVideo'];
    assetPath = json['assetPath'];
  }

  @HiveField(0)
  String? uuid;
  @HiveField(1)
  String? displayName;
  @HiveField(2)
  dynamic displayIcon;
  @HiveField(3)
  String? fullRender;
  @HiveField(4)
  dynamic swatch;
  @HiveField(5)
  dynamic streamedVideo;
  @HiveField(6)
  String? assetPath;

  WeaponsChromas copyWith({
    String? uuid,
    String? displayName,
    dynamic displayIcon,
    String? fullRender,
    dynamic swatch,
    dynamic streamedVideo,
    String? assetPath,
  }) =>
      WeaponsChromas(
        uuid: uuid ?? this.uuid,
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

WeaponsShopData shopDataFromJson(String str) =>
    WeaponsShopData.fromJson(json.decode(str));

String shopDataToJson(WeaponsShopData data) => json.encode(data.toJson());

@HiveType(typeId: 9)
class WeaponsShopData {
  WeaponsShopData({
    this.cost,
    this.category,
    this.shopOrderPriority,
    this.categoryText,
    this.gridPosition,
    this.canBeTrashed,
    this.image,
    this.newImage,
    this.newImage2,
    this.assetPath,
  });

  WeaponsShopData.fromJson(json) {
    cost = json['cost'];
    category = json['category'];
    shopOrderPriority = json['shopOrderPriority'];
    categoryText = json['categoryText'];
    gridPosition = json['gridPosition'] != null
        ? WeaponsGridPosition.fromJson(json['gridPosition'])
        : null;
    canBeTrashed = json['canBeTrashed'];
    image = json['image'];
    newImage = json['newImage'];
    newImage2 = json['newImage2'];
    assetPath = json['assetPath'];
  }

  @HiveField(0)
  num? cost;
  @HiveField(1)
  String? category;
  @HiveField(2)
  num? shopOrderPriority;
  @HiveField(3)
  String? categoryText;
  @HiveField(4)
  WeaponsGridPosition? gridPosition;
  @HiveField(5)
  bool? canBeTrashed;
  @HiveField(6)
  dynamic image;
  @HiveField(7)
  String? newImage;
  @HiveField(8)
  dynamic newImage2;
  @HiveField(9)
  String? assetPath;

  WeaponsShopData copyWith({
    num? cost,
    String? category,
    num? shopOrderPriority,
    String? categoryText,
    WeaponsGridPosition? gridPosition,
    bool? canBeTrashed,
    dynamic  image,
    String? newImage,
    dynamic newImage2,
    String? assetPath,
  }) =>
      WeaponsShopData(
        cost: cost ?? this.cost,
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

WeaponsGridPosition gridPositionFromJson(String str) =>
    WeaponsGridPosition.fromJson(json.decode(str));

String gridPositionToJson(WeaponsGridPosition data) =>
    json.encode(data.toJson());

@HiveType(typeId: 10)
class WeaponsGridPosition {
  WeaponsGridPosition({
    this.row,
    this.column,
  });

  WeaponsGridPosition.fromJson(json) {
    row = json['row'];
    column = json['column'];
  }

  @HiveField(0)
  num? row;
  @HiveField(1)
  num? column;

  WeaponsGridPosition copyWith({
    num? row,
    num? column,
  }) =>
      WeaponsGridPosition(
        row: row ?? this.row,
        column: column ?? this.column,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['row'] = row;
    map['column'] = column;
    return map;
  }
}

WeaponsStats weaponStatsFromJson(String str) =>
    WeaponsStats.fromJson(json.decode(str));

String weaponStatsToJson(WeaponsStats data) => json.encode(data.toJson());

@HiveType(typeId: 11)
class WeaponsStats {
  WeaponsStats({
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
    this.damageRanges,
  });

  WeaponsStats.fromJson(json) {
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
    adsStats = json['adsStats'] != null
        ? WeaponsAdsStats.fromJson(json['adsStats'])
        : null;
    altShotgunStats = json['altShotgunStats'];
    airBurstStats = json['airBurstStats'];
    if (json['damageRanges'] != null) {
      damageRanges = [];
      json['damageRanges'].forEach((v) {
        damageRanges?.add(WeaponsDamageRanges.fromJson(v));
      });
    }
  }

  @HiveField(0)
  num? fireRate;
  @HiveField(1)
  num? magazineSize;
  @HiveField(2)
  num? runSpeedMultiplier;
  @HiveField(3)
  num? equipTimeSeconds;
  @HiveField(4)
  num? reloadTimeSeconds;
  @HiveField(5)
  num? firstBulletAccuracy;
  @HiveField(6)
  num? shotgunPelletCount;
  @HiveField(7)
  String? wallPenetration;
  @HiveField(8)
  String? feature;
  @HiveField(9)
  dynamic fireMode;
  @HiveField(10)
  String? altFireType;
  @HiveField(11)
  WeaponsAdsStats? adsStats;
  @HiveField(12)
  dynamic altShotgunStats;
  @HiveField(13)
  dynamic airBurstStats;
  @HiveField(14)
  List<WeaponsDamageRanges>? damageRanges;

  WeaponsStats copyWith({
    num? fireRate,
    num? magazineSize,
    num? runSpeedMultiplier,
    num? equipTimeSeconds,
    num? reloadTimeSeconds,
    num? firstBulletAccuracy,
    num? shotgunPelletCount,
    String? wallPenetration,
    String? feature,
    dynamic fireMode,
    String? altFireType,
    WeaponsAdsStats? adsStats,
    dynamic altShotgunStats,
    dynamic airBurstStats,
    List<WeaponsDamageRanges>? damageRanges,
  }) =>
      WeaponsStats(
        fireRate: fireRate ?? this.fireRate,
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

WeaponsDamageRanges damageRangesFromJson(String str) =>
    WeaponsDamageRanges.fromJson(json.decode(str));

String damageRangesToJson(WeaponsDamageRanges data) =>
    json.encode(data.toJson());

@HiveType(typeId: 12)
class WeaponsDamageRanges {
  WeaponsDamageRanges({
    this.rangeStartMeters,
    this.rangeEndMeters,
    this.headDamage,
    this.bodyDamage,
    this.legDamage,
  });

  WeaponsDamageRanges.fromJson(json) {
    rangeStartMeters = json['rangeStartMeters'];
    rangeEndMeters = json['rangeEndMeters'];
    headDamage = json['headDamage'];
    bodyDamage = json['bodyDamage'];
    legDamage = json['legDamage'];
  }

  @HiveField(0)
  num? rangeStartMeters;
  @HiveField(1)
  num? rangeEndMeters;
  @HiveField(2)
  num? headDamage;
  @HiveField(3)
  num? bodyDamage;
  @HiveField(4)
  num? legDamage;

  WeaponsDamageRanges copyWith({
    num? rangeStartMeters,
    num? rangeEndMeters,
    num? headDamage,
    num? bodyDamage,
    num? legDamage,
  }) =>
      WeaponsDamageRanges(
        rangeStartMeters: rangeStartMeters ?? this.rangeStartMeters,
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

WeaponsAdsStats adsStatsFromJson(String str) =>
    WeaponsAdsStats.fromJson(json.decode(str));

String adsStatsToJson(WeaponsAdsStats data) => json.encode(data.toJson());

@HiveType(typeId: 13)
class WeaponsAdsStats {
  WeaponsAdsStats({
    this.zoomMultiplier,
    this.fireRate,
    this.runSpeedMultiplier,
    this.burstCount,
    this.firstBulletAccuracy,
  });

  WeaponsAdsStats.fromJson(json) {
    zoomMultiplier = json['zoomMultiplier'];
    fireRate = json['fireRate'];
    runSpeedMultiplier = json['runSpeedMultiplier'];
    burstCount = json['burstCount'];
    firstBulletAccuracy = json['firstBulletAccuracy'];
  }

  @HiveField(0)
  num? zoomMultiplier;
  @HiveField(1)
  num? fireRate;
  @HiveField(2)
  num? runSpeedMultiplier;
  @HiveField(3)
  num? burstCount;
  @HiveField(4)
  num? firstBulletAccuracy;

  WeaponsAdsStats copyWith({
    num? zoomMultiplier,
    num? fireRate,
    num? runSpeedMultiplier,
    num? burstCount,
    num? firstBulletAccuracy,
  }) =>
      WeaponsAdsStats(
        zoomMultiplier: zoomMultiplier ?? this.zoomMultiplier,
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
