// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weapons_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WeaponsResponseAdapter extends TypeAdapter<WeaponsResponse> {
  @override
  final int typeId = 4;

  @override
  WeaponsResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WeaponsResponse(
      status: fields[0] as num?,
      data: (fields[1] as List?)?.cast<WeaponsData>(),
    );
  }

  @override
  void write(BinaryWriter writer, WeaponsResponse obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.status)
      ..writeByte(1)
      ..write(obj.data);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WeaponsResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class WeaponsDataAdapter extends TypeAdapter<WeaponsData> {
  @override
  final int typeId = 5;

  @override
  WeaponsData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WeaponsData(
      uuid: fields[0] as String?,
      displayName: fields[1] as String?,
      category: fields[2] as String?,
      defaultSkinUuid: fields[3] as String?,
      displayIcon: fields[4] as String?,
      killStreamIcon: fields[5] as String?,
      assetPath: fields[6] as String?,
      weaponStats: fields[7] as WeaponsStats?,
      shopData: fields[8] as WeaponsShopData?,
      skins: (fields[9] as List?)?.cast<WeaponsSkins>(),
    );
  }

  @override
  void write(BinaryWriter writer, WeaponsData obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.uuid)
      ..writeByte(1)
      ..write(obj.displayName)
      ..writeByte(2)
      ..write(obj.category)
      ..writeByte(3)
      ..write(obj.defaultSkinUuid)
      ..writeByte(4)
      ..write(obj.displayIcon)
      ..writeByte(5)
      ..write(obj.killStreamIcon)
      ..writeByte(6)
      ..write(obj.assetPath)
      ..writeByte(7)
      ..write(obj.weaponStats)
      ..writeByte(8)
      ..write(obj.shopData)
      ..writeByte(9)
      ..write(obj.skins);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WeaponsDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class WeaponsSkinsAdapter extends TypeAdapter<WeaponsSkins> {
  @override
  final int typeId = 6;

  @override
  WeaponsSkins read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WeaponsSkins(
      uuid: fields[0] as String?,
      displayName: fields[1] as String?,
      themeUuid: fields[2] as String?,
      contentTierUuid: fields[3] as String?,
      displayIcon: fields[4] as String?,
      wallpaper: fields[5] as dynamic,
      assetPath: fields[6] as String?,
      chromas: (fields[7] as List?)?.cast<WeaponsChromas>(),
      levels: (fields[8] as List?)?.cast<WeaponsLevels>(),
    );
  }

  @override
  void write(BinaryWriter writer, WeaponsSkins obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.uuid)
      ..writeByte(1)
      ..write(obj.displayName)
      ..writeByte(2)
      ..write(obj.themeUuid)
      ..writeByte(3)
      ..write(obj.contentTierUuid)
      ..writeByte(4)
      ..write(obj.displayIcon)
      ..writeByte(5)
      ..write(obj.wallpaper)
      ..writeByte(6)
      ..write(obj.assetPath)
      ..writeByte(7)
      ..write(obj.chromas)
      ..writeByte(8)
      ..write(obj.levels);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WeaponsSkinsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class WeaponsLevelsAdapter extends TypeAdapter<WeaponsLevels> {
  @override
  final int typeId = 7;

  @override
  WeaponsLevels read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WeaponsLevels(
      uuid: fields[0] as String?,
      displayName: fields[1] as String?,
      levelItem: fields[2] as dynamic,
      displayIcon: fields[3] as String?,
      streamedVideo: fields[4] as dynamic,
      assetPath: fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, WeaponsLevels obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.uuid)
      ..writeByte(1)
      ..write(obj.displayName)
      ..writeByte(2)
      ..write(obj.levelItem)
      ..writeByte(3)
      ..write(obj.displayIcon)
      ..writeByte(4)
      ..write(obj.streamedVideo)
      ..writeByte(5)
      ..write(obj.assetPath);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WeaponsLevelsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class WeaponsChromasAdapter extends TypeAdapter<WeaponsChromas> {
  @override
  final int typeId = 8;

  @override
  WeaponsChromas read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WeaponsChromas(
      uuid: fields[0] as String?,
      displayName: fields[1] as String?,
      displayIcon: fields[2] as dynamic,
      fullRender: fields[3] as String?,
      swatch: fields[4] as dynamic,
      streamedVideo: fields[5] as dynamic,
      assetPath: fields[6] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, WeaponsChromas obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.uuid)
      ..writeByte(1)
      ..write(obj.displayName)
      ..writeByte(2)
      ..write(obj.displayIcon)
      ..writeByte(3)
      ..write(obj.fullRender)
      ..writeByte(4)
      ..write(obj.swatch)
      ..writeByte(5)
      ..write(obj.streamedVideo)
      ..writeByte(6)
      ..write(obj.assetPath);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WeaponsChromasAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class WeaponsShopDataAdapter extends TypeAdapter<WeaponsShopData> {
  @override
  final int typeId = 9;

  @override
  WeaponsShopData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WeaponsShopData(
      cost: fields[0] as num?,
      category: fields[1] as String?,
      shopOrderPriority: fields[2] as num?,
      categoryText: fields[3] as String?,
      gridPosition: fields[4] as WeaponsGridPosition?,
      canBeTrashed: fields[5] as bool?,
      image: fields[6] as dynamic,
      newImage: fields[7] as String?,
      newImage2: fields[8] as dynamic,
      assetPath: fields[9] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, WeaponsShopData obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.cost)
      ..writeByte(1)
      ..write(obj.category)
      ..writeByte(2)
      ..write(obj.shopOrderPriority)
      ..writeByte(3)
      ..write(obj.categoryText)
      ..writeByte(4)
      ..write(obj.gridPosition)
      ..writeByte(5)
      ..write(obj.canBeTrashed)
      ..writeByte(6)
      ..write(obj.image)
      ..writeByte(7)
      ..write(obj.newImage)
      ..writeByte(8)
      ..write(obj.newImage2)
      ..writeByte(9)
      ..write(obj.assetPath);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WeaponsShopDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class WeaponsGridPositionAdapter extends TypeAdapter<WeaponsGridPosition> {
  @override
  final int typeId = 10;

  @override
  WeaponsGridPosition read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WeaponsGridPosition(
      row: fields[0] as num?,
      column: fields[1] as num?,
    );
  }

  @override
  void write(BinaryWriter writer, WeaponsGridPosition obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.row)
      ..writeByte(1)
      ..write(obj.column);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WeaponsGridPositionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class WeaponsStatsAdapter extends TypeAdapter<WeaponsStats> {
  @override
  final int typeId = 11;

  @override
  WeaponsStats read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WeaponsStats(
      fireRate: fields[0] as num?,
      magazineSize: fields[1] as num?,
      runSpeedMultiplier: fields[2] as num?,
      equipTimeSeconds: fields[3] as num?,
      reloadTimeSeconds: fields[4] as num?,
      firstBulletAccuracy: fields[5] as num?,
      shotgunPelletCount: fields[6] as num?,
      wallPenetration: fields[7] as String?,
      feature: fields[8] as String?,
      fireMode: fields[9] as dynamic,
      altFireType: fields[10] as String?,
      adsStats: fields[11] as WeaponsAdsStats?,
      altShotgunStats: fields[12] as dynamic,
      airBurstStats: fields[13] as dynamic,
      damageRanges: (fields[14] as List?)?.cast<WeaponsDamageRanges>(),
    );
  }

  @override
  void write(BinaryWriter writer, WeaponsStats obj) {
    writer
      ..writeByte(15)
      ..writeByte(0)
      ..write(obj.fireRate)
      ..writeByte(1)
      ..write(obj.magazineSize)
      ..writeByte(2)
      ..write(obj.runSpeedMultiplier)
      ..writeByte(3)
      ..write(obj.equipTimeSeconds)
      ..writeByte(4)
      ..write(obj.reloadTimeSeconds)
      ..writeByte(5)
      ..write(obj.firstBulletAccuracy)
      ..writeByte(6)
      ..write(obj.shotgunPelletCount)
      ..writeByte(7)
      ..write(obj.wallPenetration)
      ..writeByte(8)
      ..write(obj.feature)
      ..writeByte(9)
      ..write(obj.fireMode)
      ..writeByte(10)
      ..write(obj.altFireType)
      ..writeByte(11)
      ..write(obj.adsStats)
      ..writeByte(12)
      ..write(obj.altShotgunStats)
      ..writeByte(13)
      ..write(obj.airBurstStats)
      ..writeByte(14)
      ..write(obj.damageRanges);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WeaponsStatsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class WeaponsDamageRangesAdapter extends TypeAdapter<WeaponsDamageRanges> {
  @override
  final int typeId = 12;

  @override
  WeaponsDamageRanges read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WeaponsDamageRanges(
      rangeStartMeters: fields[0] as num?,
      rangeEndMeters: fields[1] as num?,
      headDamage: fields[2] as num?,
      bodyDamage: fields[3] as num?,
      legDamage: fields[4] as num?,
    );
  }

  @override
  void write(BinaryWriter writer, WeaponsDamageRanges obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.rangeStartMeters)
      ..writeByte(1)
      ..write(obj.rangeEndMeters)
      ..writeByte(2)
      ..write(obj.headDamage)
      ..writeByte(3)
      ..write(obj.bodyDamage)
      ..writeByte(4)
      ..write(obj.legDamage);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WeaponsDamageRangesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class WeaponsAdsStatsAdapter extends TypeAdapter<WeaponsAdsStats> {
  @override
  final int typeId = 13;

  @override
  WeaponsAdsStats read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WeaponsAdsStats(
      zoomMultiplier: fields[0] as num?,
      fireRate: fields[1] as num?,
      runSpeedMultiplier: fields[2] as num?,
      burstCount: fields[3] as num?,
      firstBulletAccuracy: fields[4] as num?,
    );
  }

  @override
  void write(BinaryWriter writer, WeaponsAdsStats obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.zoomMultiplier)
      ..writeByte(1)
      ..write(obj.fireRate)
      ..writeByte(2)
      ..write(obj.runSpeedMultiplier)
      ..writeByte(3)
      ..write(obj.burstCount)
      ..writeByte(4)
      ..write(obj.firstBulletAccuracy);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WeaponsAdsStatsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
