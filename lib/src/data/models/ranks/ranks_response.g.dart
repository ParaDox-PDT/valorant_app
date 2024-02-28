// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ranks_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RanksResponseAdapter extends TypeAdapter<RanksResponse> {
  @override
  final int typeId = 15;

  @override
  RanksResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RanksResponse(
      status: fields[0] as num?,
      data: fields[1] as RanksData?,
    );
  }

  @override
  void write(BinaryWriter writer, RanksResponse obj) {
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
      other is RanksResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class RanksDataAdapter extends TypeAdapter<RanksData> {
  @override
  final int typeId = 16;

  @override
  RanksData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RanksData(
      uuid: fields[0] as String?,
      assetObjectName: fields[1] as String?,
      tiers: (fields[2] as List?)?.cast<RanksTiers>(),
      assetPath: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, RanksData obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.uuid)
      ..writeByte(1)
      ..write(obj.assetObjectName)
      ..writeByte(2)
      ..write(obj.tiers)
      ..writeByte(3)
      ..write(obj.assetPath);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RanksDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class RanksTiersAdapter extends TypeAdapter<RanksTiers> {
  @override
  final int typeId = 17;

  @override
  RanksTiers read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RanksTiers(
      tier: fields[0] as num?,
      tierName: fields[1] as String?,
      division: fields[2] as String?,
      divisionName: fields[3] as String?,
      color: fields[4] as String?,
      backgroundColor: fields[5] as String?,
      smallIcon: fields[6] as String?,
      largeIcon: fields[7] as String?,
      rankTriangleDownIcon: fields[8] as String?,
      rankTriangleUpIcon: fields[9] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, RanksTiers obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.tier)
      ..writeByte(1)
      ..write(obj.tierName)
      ..writeByte(2)
      ..write(obj.division)
      ..writeByte(3)
      ..write(obj.divisionName)
      ..writeByte(4)
      ..write(obj.color)
      ..writeByte(5)
      ..write(obj.backgroundColor)
      ..writeByte(6)
      ..write(obj.smallIcon)
      ..writeByte(7)
      ..write(obj.largeIcon)
      ..writeByte(8)
      ..write(obj.rankTriangleDownIcon)
      ..writeByte(9)
      ..write(obj.rankTriangleUpIcon);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RanksTiersAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
