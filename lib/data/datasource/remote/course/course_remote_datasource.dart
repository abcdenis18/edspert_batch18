import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:learning_18/data/models/course/course_response.dart';

class CourseRemoteDatasource {
  Future<CourseReponseModel> getCourse() async {
    try {
      const url =
          'https://edspert.widyaedu.com/exercise/data_course?major_name=IPA&user_email=testerngbayu@gmail.com';

      final response = await Dio().get(
        url,
        options: Options(
          headers: {'x-api-key': '18be70c0-4e4d-44ff-a475-50c51ece99a0'},
        ),
      );

      return CourseReponseModel.fromMap(response.data);
    } catch (e) {
      log("$e");
      rethrow;
    }
  }
}
