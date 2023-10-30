import 'package:dio/dio.dart';
import 'package:learning_18/data/models/banner/banner_response.dart';

class BannerRemoteDatasource {
  Future<BannerResponseModel> getBanner() async {
    try {
      const url = 'https://edspert.widyaedu.com/event/list?limit=5';

      final response = await Dio().get(
        url,
        options: Options(
          headers: {'x-api-key': '18be70c0-4e4d-44ff-a475-50c51ece99a0'},
        ),
      );

      return BannerResponseModel.fromMap(response.data);
    } catch (e) {
      rethrow;
    }
  }
}
