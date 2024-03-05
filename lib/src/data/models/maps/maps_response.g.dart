// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'maps_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MapsResponseAdapter extends TypeAdapter<MapsResponse> {
  @override
  final int typeId = 23;

  @override
  MapsResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MapsResponse(
      status: fields[0] as num?,
      data: (fields[1] as List?)?.cast<MapsData>(),
    );
  }

  @override
  void write(BinaryWriter writer, MapsResponse obj) {
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
      other is MapsResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class MapsDataAdapter extends TypeAdapter<MapsData> {
  @override
  final int typeId = 24;

  @override
  MapsData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MapsData(
      uuid: fields[0] as String?,
      displayName: fields[1] as String?,
      narrativeDescription: fields[2] as String?,
      tacticalDescription: fields[3] as String?,
      coordinates: fields[4] as String?,
      displayIcon: fields[5] as String?,
      listViewIcon: fields[6] as String?,
      listViewIconTall: fields[7] as String?,
      splash: fields[8] as String?,
      stylizedBackgroundImage: fields[9] as String?,
      premierBackgroundImage: fields[10] as String?,
      assetPath: fields[11] as String?,
      mapUrl: fields[12] as String?,
      xMultiplier: fields[13] as num?,
      yMultiplier: fields[14] as num?,
      xScalarToAdd: fields[15] as num?,
      yScalarToAdd: fields[16] as num?,
      callouts: (fields[17] as List?)?.cast<MapsCallouts>(),
    );
  }

  @override
  void write(BinaryWriter writer, MapsData obj) {
    writer
      ..writeByte(18)
      ..writeByte(0)
      ..write(obj.uuid)
      ..writeByte(1)
      ..write(obj.displayName)
      ..writeByte(2)
      ..write(obj.narrativeDescription)
      ..writeByte(3)
      ..write(obj.tacticalDescription)
      ..writeByte(4)
      ..write(obj.coordinates)
      ..writeByte(5)
      ..write(obj.displayIcon)
      ..writeByte(6)
      ..write(obj.listViewIcon)
      ..writeByte(7)
      ..write(obj.listViewIconTall)
      ..writeByte(8)
      ..write(obj.splash)
      ..writeByte(9)
      ..write(obj.stylizedBackgroundImage)
      ..writeByte(10)
      ..write(obj.premierBackgroundImage)
      ..writeByte(11)
      ..write(obj.assetPath)
      ..writeByte(12)
      ..write(obj.mapUrl)
      ..writeByte(13)
      ..write(obj.xMultiplier)
      ..writeByte(14)
      ..write(obj.yMultiplier)
      ..writeByte(15)
      ..write(obj.xScalarToAdd)
      ..writeByte(16)
      ..write(obj.yScalarToAdd)
      ..writeByte(17)
      ..write(obj.callouts);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MapsDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class MapsCalloutsAdapter extends TypeAdapter<MapsCallouts> {
  @override
  final int typeId = 25;

  @override
  MapsCallouts read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MapsCallouts(
      regionName: fields[0] as String?,
      superRegionName: fields[1] as String?,
      location: fields[2] as MapsLocation?,
    );
  }

  @override
  void write(BinaryWriter writer, MapsCallouts obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.regionName)
      ..writeByte(1)
      ..write(obj.superRegionName)
      ..writeByte(2)
      ..write(obj.location);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MapsCalloutsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class MapsLocationAdapter extends TypeAdapter<MapsLocation> {
  @override
  final int typeId = 26;

  @override
  MapsLocation read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MapsLocation(
      x: fields[0] as num?,
      y: fields[1] as num?,
    );
  }

  @override
  void write(BinaryWriter writer, MapsLocation obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.x)
      ..writeByte(1)
      ..write(obj.y);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MapsLocationAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
