// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agents_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AgentsAdapter extends TypeAdapter<Agents> {
  @override
  final int typeId = 0;

  @override
  Agents read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Agents(
      status: fields[0] as int?,
      data: (fields[1] as List?)?.cast<AgentsData>(),
    );
  }

  @override
  void write(BinaryWriter writer, Agents obj) {
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
      other is AgentsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AgentsDataAdapter extends TypeAdapter<AgentsData> {
  @override
  final int typeId = 1;

  @override
  AgentsData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AgentsData(
      uuid: fields[0] as String?,
      displayName: fields[1] as String?,
      description: fields[2] as String?,
      developerName: fields[3] as String?,
      characterTags: fields[4] as dynamic,
      displayIcon: fields[5] as String?,
      displayIconSmall: fields[6] as String?,
      bustPortrait: fields[7] as String?,
      fullPortrait: fields[8] as String?,
      fullPortraitV2: fields[9] as String?,
      killfeedPortrait: fields[10] as String?,
      background: fields[11] as String?,
      backgroundGradientColors: (fields[12] as List?)?.cast<String>(),
      assetPath: fields[13] as String?,
      isFullPortraitRightFacing: fields[14] as bool?,
      isPlayableCharacter: fields[15] as bool?,
      isAvailableForTest: fields[16] as bool?,
      isBaseContent: fields[17] as bool?,
      role: fields[18] as AgentsRole?,
      recruitmentData: fields[19] as dynamic,
      abilities: (fields[20] as List?)?.cast<AgentsAbilities>(),
      voiceLine: fields[21] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, AgentsData obj) {
    writer
      ..writeByte(22)
      ..writeByte(0)
      ..write(obj.uuid)
      ..writeByte(1)
      ..write(obj.displayName)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.developerName)
      ..writeByte(4)
      ..write(obj.characterTags)
      ..writeByte(5)
      ..write(obj.displayIcon)
      ..writeByte(6)
      ..write(obj.displayIconSmall)
      ..writeByte(7)
      ..write(obj.bustPortrait)
      ..writeByte(8)
      ..write(obj.fullPortrait)
      ..writeByte(9)
      ..write(obj.fullPortraitV2)
      ..writeByte(10)
      ..write(obj.killfeedPortrait)
      ..writeByte(11)
      ..write(obj.background)
      ..writeByte(12)
      ..write(obj.backgroundGradientColors)
      ..writeByte(13)
      ..write(obj.assetPath)
      ..writeByte(14)
      ..write(obj.isFullPortraitRightFacing)
      ..writeByte(15)
      ..write(obj.isPlayableCharacter)
      ..writeByte(16)
      ..write(obj.isAvailableForTest)
      ..writeByte(17)
      ..write(obj.isBaseContent)
      ..writeByte(18)
      ..write(obj.role)
      ..writeByte(19)
      ..write(obj.recruitmentData)
      ..writeByte(20)
      ..write(obj.abilities)
      ..writeByte(21)
      ..write(obj.voiceLine);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AgentsDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AgentsAbilitiesAdapter extends TypeAdapter<AgentsAbilities> {
  @override
  final int typeId = 2;

  @override
  AgentsAbilities read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AgentsAbilities(
      slot: fields[0] as String?,
      displayName: fields[1] as String?,
      description: fields[2] as String?,
      displayIcon: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, AgentsAbilities obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.slot)
      ..writeByte(1)
      ..write(obj.displayName)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.displayIcon);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AgentsAbilitiesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AgentsRoleAdapter extends TypeAdapter<AgentsRole> {
  @override
  final int typeId = 3;

  @override
  AgentsRole read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AgentsRole(
      uuid: fields[0] as String?,
      displayName: fields[1] as String?,
      description: fields[2] as String?,
      displayIcon: fields[3] as String?,
      assetPath: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, AgentsRole obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.uuid)
      ..writeByte(1)
      ..write(obj.displayName)
      ..writeByte(2)
      ..write(obj.description)
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
      other is AgentsRoleAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
