import 'dart:convert';

WallpapersResponse wallpapersResponseFromJson(String str) =>
    WallpapersResponse.fromJson(json.decode(str));

String wallpapersResponseToJson(WallpapersResponse data) =>
    json.encode(data.toJson());

class WallpapersResponse {
  WallpapersResponse({
    this.uuid,
    this.imageUrl,
    this.category,
  });

  WallpapersResponse.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    imageUrl = json['image_url'];
    category = json['category'];
  }

  String? uuid;
  String? imageUrl;
  String? category;

  WallpapersResponse copyWith({
    String? uuid,
    String? imageUrl,
    String? category,
  }) =>
      WallpapersResponse(
        uuid: uuid ?? this.uuid,
        imageUrl: imageUrl ?? this.imageUrl,
        category: category ?? this.category,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['uuid'] = uuid;
    map['image_url'] = imageUrl;
    map['category'] = category;
    return map;
  }
}
