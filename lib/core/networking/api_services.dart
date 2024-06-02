import 'package:cancer/core/networking/api_constance.dart';
import 'package:dio/dio.dart';

class ApiServices {
  final Dio _dio;

  ApiServices(this._dio);

  Future<Map<String, dynamic>> get(
      {required String endPoint, Map<String, dynamic>? headers}) async {
    final result = await _dio.get(ApiConstance.baseUrl + endPoint,
        options: Options(
            headers: headers ??
                {
                  'Content-Type': ApiConstance.contentType,
                }));
    return result.data;
  }

  Future<Map<String, dynamic>> post({
    required String endPoint,
    Map<String, dynamic>? headers,
    required Map<String, dynamic> data,
  }) async {
    final result = await _dio.post(ApiConstance.baseUrl + endPoint,
        data: data,
        options: Options(
            headers: headers ??
                {
                  'Content-Type': ApiConstance.contentType,
                }));
    return result.data;
  }
}
