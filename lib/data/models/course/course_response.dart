import 'dart:convert';

class CourseReponseModel {
  int? status;
  String? message;
  List<Course>? data;

  CourseReponseModel({
    this.status,
    this.message,
    this.data,
  });

  factory CourseReponseModel.fromJson(String str) =>
      CourseReponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CourseReponseModel.fromMap(Map<String, dynamic> json) =>
      CourseReponseModel(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<Course>.from(json["data"]!.map((x) => Course.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "message": message,
        "data":
            data == null ? [] : List<dynamic>.from(data!.map((x) => x.toMap())),
      };
}

class Course {
  String? courseId;
  String? majorName;
  String? courseCategory;
  String? courseName;
  String? urlCover;
  int? jumlahMateri;
  int? jumlahDone;
  int? progress;

  Course({
    this.courseId,
    this.majorName,
    this.courseCategory,
    this.courseName,
    this.urlCover,
    this.jumlahMateri,
    this.jumlahDone,
    this.progress,
  });

  factory Course.fromJson(String str) => Course.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Course.fromMap(Map<String, dynamic> json) => Course(
        courseId: json["course_id"],
        majorName: json["major_name"],
        courseCategory: json["course_category"],
        courseName: json["course_name"],
        urlCover: json["url_cover"],
        jumlahMateri: json["jumlah_materi"],
        jumlahDone: json["jumlah_done"],
        progress: json["progress"],
      );

  Map<String, dynamic> toMap() => {
        "course_id": courseId,
        "major_name": majorName,
        "course_category": courseCategory,
        "course_name": courseName,
        "url_cover": urlCover,
        "jumlah_materi": jumlahMateri,
        "jumlah_done": jumlahDone,
        "progress": progress,
      };
}
