import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';

part 'maps_response.g.dart';

MapsResponse mapsResponseFromJson(String str) =>
    MapsResponse.fromJson(json.decode(str));

String mapsResponseToJson(MapsResponse data) => json.encode(data.toJson());

@HiveType(typeId: 23)
class MapsResponse {
  MapsResponse({
    this.status,
    this.data,
  });

  MapsResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(MapsData.fromJson(v));
      });
    }
  }

  @HiveField(0)
  num? status;
  @HiveField(1)
  List<MapsData>? data;

  MapsResponse copyWith({
    num? status,
    List<MapsData>? data,
  }) =>
      MapsResponse(
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

MapsData dataFromJson(String str) => MapsData.fromJson(json.decode(str));

String dataToJson(MapsData data) => json.encode(data.toJson());

@HiveType(typeId: 24)
class MapsData {
  MapsData({
    this.uuid,
    this.displayName,
    this.narrativeDescription,
    this.tacticalDescription,
    this.coordinates,
    this.displayIcon,
    this.listViewIcon,
    this.listViewIconTall,
    this.splash,
    this.stylizedBackgroundImage,
    this.premierBackgroundImage,
    this.assetPath,
    this.mapUrl,
    this.xMultiplier,
    this.yMultiplier,
    this.xScalarToAdd,
    this.yScalarToAdd,
    this.callouts,
  });

  MapsData.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    displayName = json['displayName'];
    narrativeDescription = json['narrativeDescription'];
    tacticalDescription = json['tacticalDescription'];
    coordinates = json['coordinates'];
    displayIcon = json['displayIcon'];
    listViewIcon = json['listViewIcon'];
    listViewIconTall = json['listViewIconTall'];
    splash = json['splash'];
    stylizedBackgroundImage = json['stylizedBackgroundImage'];
    premierBackgroundImage = json['premierBackgroundImage'];
    assetPath = json['assetPath'];
    mapUrl = json['mapUrl'];
    xMultiplier = json['xMultiplier'];
    yMultiplier = json['yMultiplier'];
    xScalarToAdd = json['xScalarToAdd'];
    yScalarToAdd = json['yScalarToAdd'];
    if (json['callouts'] != null) {
      callouts = [];
      json['callouts'].forEach((v) {
        callouts?.add(MapsCallouts.fromJson(v));
      });
    }
  }

  @HiveField(0)
  String? uuid;
  @HiveField(1)
  String? displayName;
  @HiveField(2)
  String? narrativeDescription;
  @HiveField(3)
  String? tacticalDescription;
  @HiveField(4)
  String? coordinates;
  @HiveField(5)
  String? displayIcon;
  @HiveField(6)
  String? listViewIcon;
  @HiveField(7)
  String? listViewIconTall;
  @HiveField(8)
  String? splash;
  @HiveField(9)
  String? stylizedBackgroundImage;
  @HiveField(10)
  String? premierBackgroundImage;
  @HiveField(11)
  String? assetPath;
  @HiveField(12)
  String? mapUrl;
  @HiveField(13)
  num? xMultiplier;
  @HiveField(14)
  num? yMultiplier;
  @HiveField(15)
  num? xScalarToAdd;
  @HiveField(16)
  num? yScalarToAdd;
  @HiveField(17)
  List<MapsCallouts>? callouts;

  MapsData copyWith({
    String? uuid,
    String? displayName,
    String? narrativeDescription,
    String? tacticalDescription,
    String? coordinates,
    String? displayIcon,
    String? listViewIcon,
    String? listViewIconTall,
    String? splash,
    String? stylizedBackgroundImage,
    String? premierBackgroundImage,
    String? assetPath,
    String? mapUrl,
    num? xMultiplier,
    num? yMultiplier,
    num? xScalarToAdd,
    num? yScalarToAdd,
    List<MapsCallouts>? callouts,
  }) =>
      MapsData(
        uuid: uuid ?? this.uuid,
        displayName: displayName ?? this.displayName,
        narrativeDescription: narrativeDescription ?? this.narrativeDescription,
        tacticalDescription: tacticalDescription ?? this.tacticalDescription,
        coordinates: coordinates ?? this.coordinates,
        displayIcon: displayIcon ?? this.displayIcon,
        listViewIcon: listViewIcon ?? this.listViewIcon,
        listViewIconTall: listViewIconTall ?? this.listViewIconTall,
        splash: splash ?? this.splash,
        stylizedBackgroundImage:
            stylizedBackgroundImage ?? this.stylizedBackgroundImage,
        premierBackgroundImage:
            premierBackgroundImage ?? this.premierBackgroundImage,
        assetPath: assetPath ?? this.assetPath,
        mapUrl: mapUrl ?? this.mapUrl,
        xMultiplier: xMultiplier ?? this.xMultiplier,
        yMultiplier: yMultiplier ?? this.yMultiplier,
        xScalarToAdd: xScalarToAdd ?? this.xScalarToAdd,
        yScalarToAdd: yScalarToAdd ?? this.yScalarToAdd,
        callouts: callouts ?? this.callouts,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['uuid'] = uuid;
    map['displayName'] = displayName;
    map['narrativeDescription'] = narrativeDescription;
    map['tacticalDescription'] = tacticalDescription;
    map['coordinates'] = coordinates;
    map['displayIcon'] = displayIcon;
    map['listViewIcon'] = listViewIcon;
    map['listViewIconTall'] = listViewIconTall;
    map['splash'] = splash;
    map['stylizedBackgroundImage'] = stylizedBackgroundImage;
    map['premierBackgroundImage'] = premierBackgroundImage;
    map['assetPath'] = assetPath;
    map['mapUrl'] = mapUrl;
    map['xMultiplier'] = xMultiplier;
    map['yMultiplier'] = yMultiplier;
    map['xScalarToAdd'] = xScalarToAdd;
    map['yScalarToAdd'] = yScalarToAdd;
    if (callouts != null) {
      map['callouts'] = callouts?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

MapsCallouts calloutsFromJson(String str) =>
    MapsCallouts.fromJson(json.decode(str));

String calloutsToJson(MapsCallouts data) => json.encode(data.toJson());

@HiveType(typeId: 25)
class MapsCallouts {
  MapsCallouts({
    this.regionName,
    this.superRegionName,
    this.location,
  });

  MapsCallouts.fromJson(Map<String, dynamic> json) {
    regionName = json['regionName'];
    superRegionName = json['superRegionName'];
    location = json['location'] != null
        ? MapsLocation.fromJson(json['location'])
        : null;
  }

  @HiveField(0)
  String? regionName;
  @HiveField(1)
  String? superRegionName;
  @HiveField(2)
  MapsLocation? location;

  MapsCallouts copyWith({
    String? regionName,
    String? superRegionName,
    MapsLocation? location,
  }) =>
      MapsCallouts(
        regionName: regionName ?? this.regionName,
        superRegionName: superRegionName ?? this.superRegionName,
        location: location ?? this.location,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['regionName'] = regionName;
    map['superRegionName'] = superRegionName;
    if (location != null) {
      map['location'] = location?.toJson();
    }
    return map;
  }
}

MapsLocation locationFromJson(String str) =>
    MapsLocation.fromJson(json.decode(str));

String locationToJson(MapsLocation data) => json.encode(data.toJson());

@HiveType(typeId: 26)
class MapsLocation {
  MapsLocation({
    this.x,
    this.y,
  });

  MapsLocation.fromJson(Map<String, dynamic> json) {
    x = json['x'];
    y = json['y'];
  }

  @HiveField(0)
  num? x;
  @HiveField(1)
  num? y;

  MapsLocation copyWith({
    num? x,
    num? y,
  }) =>
      MapsLocation(
        x: x ?? this.x,
        y: y ?? this.y,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['x'] = x;
    map['y'] = y;
    return map;
  }
}
