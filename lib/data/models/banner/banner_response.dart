import 'dart:convert';

class BannerResponseModel {
  int? status;
  String? message;
  List<BannerItem>? data;

  BannerResponseModel({
    this.status,
    this.message,
    this.data,
  });

  factory BannerResponseModel.fromJson(String str) =>
      BannerResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory BannerResponseModel.fromMap(Map<String, dynamic> json) =>
      BannerResponseModel(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<BannerItem>.from(
                json["data"]!.map((x) => BannerItem.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "message": message,
        "data":
            data == null ? [] : List<dynamic>.from(data!.map((x) => x.toMap())),
      };
}

class BannerItem {
  String? eventId;
  String? eventTitle;
  String? eventDescription;
  String? eventImage;
  String? eventUrl;

  BannerItem({
    this.eventId,
    this.eventTitle,
    this.eventDescription,
    this.eventImage,
    this.eventUrl,
  });

  factory BannerItem.fromJson(String str) =>
      BannerItem.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory BannerItem.fromMap(Map<String, dynamic> json) => BannerItem(
        eventId: json["event_id"],
        eventTitle: json["event_title"],
        eventDescription: json["event_description"],
        eventImage: json["event_image"],
        eventUrl: json["event_url"],
      );

  Map<String, dynamic> toMap() => {
        "event_id": eventId,
        "event_title": eventTitle,
        "event_description": eventDescription,
        "event_image": eventImage,
        "event_url": eventUrl,
      };
}
