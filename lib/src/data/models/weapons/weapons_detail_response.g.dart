// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weapons_detail_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WeaponsDetailResponseAdapter extends TypeAdapter<WeaponsDetailResponse> {
  @override
  final int typeId = 14;

  @override
  WeaponsDetailResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WeaponsDetailResponse();
  }

  @override
  void write(BinaryWriter writer, WeaponsDetailResponse obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WeaponsDetailResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
