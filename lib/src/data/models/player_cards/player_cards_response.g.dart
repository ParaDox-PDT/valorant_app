// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_cards_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PlayerCardsResponseAdapter extends TypeAdapter<PlayerCardsResponse> {
  @override
  final int typeId = 21;

  @override
  PlayerCardsResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PlayerCardsResponse(
      status: fields[0] as num?,
      data: (fields[1] as List?)?.cast<PlayerCardsData>(),
    );
  }

  @override
  void write(BinaryWriter writer, PlayerCardsResponse obj) {
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
      other is PlayerCardsResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PlayerCardsDataAdapter extends TypeAdapter<PlayerCardsData> {
  @override
  final int typeId = 22;

  @override
  PlayerCardsData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PlayerCardsData(
      uuid: fields[0] as String?,
      displayName: fields[1] as String?,
      isHiddenIfNotOwned: fields[2] as bool?,
      themeUuid: fields[3] as String?,
      displayIcon: fields[4] as String?,
      smallArt: fields[5] as String?,
      wideArt: fields[6] as String?,
      largeArt: fields[7] as String?,
      assetPath: fields[8] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, PlayerCardsData obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.uuid)
      ..writeByte(1)
      ..write(obj.displayName)
      ..writeByte(2)
      ..write(obj.isHiddenIfNotOwned)
      ..writeByte(3)
      ..write(obj.themeUuid)
      ..writeByte(4)
      ..write(obj.displayIcon)
      ..writeByte(5)
      ..write(obj.smallArt)
      ..writeByte(6)
      ..write(obj.wideArt)
      ..writeByte(7)
      ..write(obj.largeArt)
      ..writeByte(8)
      ..write(obj.assetPath);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlayerCardsDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
