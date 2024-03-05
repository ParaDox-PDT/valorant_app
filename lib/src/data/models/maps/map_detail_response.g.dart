// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_detail_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MapDetailResponseAdapter extends TypeAdapter<MapDetailResponse> {
  @override
  final int typeId = 27;

  @override
  MapDetailResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MapDetailResponse(
      status: fields[0] as num?,
      data: fields[1] as MapsData?,
    );
  }

  @override
  void write(BinaryWriter writer, MapDetailResponse obj) {
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
      other is MapDetailResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
