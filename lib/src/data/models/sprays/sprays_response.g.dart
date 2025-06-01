// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sprays_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SpraysResponseAdapter extends TypeAdapter<SpraysResponse> {
  @override
  final int typeId = 18;

  @override
  SpraysResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SpraysResponse(
      status: fields[0] as num?,
      data: (fields[1] as List?)?.cast<SpraysData>(),
    );
  }

  @override
  void write(BinaryWriter writer, SpraysResponse obj) {
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
      other is SpraysResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SpraysDataAdapter extends TypeAdapter<SpraysData> {
  @override
  final int typeId = 19;

  @override
  SpraysData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SpraysData(
      uuid: fields[0] as String?,
      displayName: fields[1] as String?,
      category: fields[2] as dynamic,
      themeUuid: fields[3] as dynamic,
      isNullSpray: fields[4] as bool?,
      hideIfNotOwned: fields[5] as bool?,
      displayIcon: fields[6] as String?,
      fullIcon: fields[7] as String?,
      fullTransparentIcon: fields[8] as String?,
      animationPng: fields[9] as dynamic,
      animationGif: fields[10] as dynamic,
      assetPath: fields[11] as String?,
      levels: (fields[12] as List?)?.cast<SpraysLevels>(),
    );
  }

  @override
  void write(BinaryWriter writer, SpraysData obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.uuid)
      ..writeByte(1)
      ..write(obj.displayName)
      ..writeByte(2)
      ..write(obj.category)
      ..writeByte(3)
      ..write(obj.themeUuid)
      ..writeByte(4)
      ..write(obj.isNullSpray)
      ..writeByte(5)
      ..write(obj.hideIfNotOwned)
      ..writeByte(6)
      ..write(obj.displayIcon)
      ..writeByte(7)
      ..write(obj.fullIcon)
      ..writeByte(8)
      ..write(obj.fullTransparentIcon)
      ..writeByte(9)
      ..write(obj.animationPng)
      ..writeByte(10)
      ..write(obj.animationGif)
      ..writeByte(11)
      ..write(obj.assetPath)
      ..writeByte(12)
      ..write(obj.levels);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SpraysDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SpraysLevelsAdapter extends TypeAdapter<SpraysLevels> {
  @override
  final int typeId = 20;

  @override
  SpraysLevels read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SpraysLevels(
      uuid: fields[0] as String?,
      sprayLevel: fields[1] as num?,
      displayName: fields[2] as String?,
      displayIcon: fields[3] as String?,
      assetPath: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, SpraysLevels obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.uuid)
      ..writeByte(1)
      ..write(obj.sprayLevel)
      ..writeByte(2)
      ..write(obj.displayName)
      ..writeByte(3)
      ..write(obj.displayIcon)
      ..writeByte(4)
      ..write(obj.assetPath);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SpraysLevelsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
