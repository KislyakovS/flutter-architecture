import 'package:dio/dio.dart';
import 'package:flutter_architecture/data/api/model/api_day.dart';
import 'package:flutter_architecture/data/api/request/get_day_body.dart';

class SunriseService {
  static const _BASE_URL = 'https://api.sunrise-sunset.org';

  final Dio _dio = Dio(BaseOptions(baseUrl: _BASE_URL));

  Future<ApiDay> getDay(GetDayBody body) async {
    final response = await _dio.get('/json', queryParameters: body.toApi());

    return ApiDay.fromApi(response.data);
  }
}
