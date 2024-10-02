import 'package:dio/dio.dart';

import '../error/exception.dart';
import 'api_consumer.dart';
import 'api_interceptors.dart';
import 'end_points.dart';

class DioConsumer extends ApiConsumer {
  final Dio dio;
  DioConsumer(this.dio) {
    dio.options.baseUrl = EndPoints.baseUrl;
    dio.interceptors.add(ApiInterceptors());
    dio.interceptors.add(LogInterceptor(
        request: true,
        requestBody: true,
        requestHeader: true,
        error: true,
        responseBody: true,
        responseHeader: true));
  }
  @override
  Future delete(String path,
      {dynamic data,
      Map<String, dynamic>? queryParmaters,
      bool isFormData = false}) async {
    try {
      final response = await dio.delete(path,
          data: isFormData ? FormData.fromMap(data) : data,
          queryParameters: queryParmaters);
      return response.data;
    } on DioException catch (e) {
      exceptionSwitch(e);
    }
  }

  @override
  Future get(String path,
      {Object? data, Map<String, dynamic>? queryParmaters}) async {
    try {
      final response =
          await dio.get(path, data: data, queryParameters: queryParmaters);
      return response.data['results'];
    } on DioException catch (e) {
      exceptionSwitch(e);
    }
  }

  @override
  Future patch(String path,
      {dynamic data,
      Map<String, dynamic>? queryParmaters,
      bool isFormData = false}) async {
    try {
      final response = await dio.patch(path,
          data: isFormData ? FormData.fromMap(data) : data,
          queryParameters: queryParmaters);
      return response.data;
    } on DioException catch (e) {
      exceptionSwitch(e);
    }
  }

  @override
  Future post(String path,
      {dynamic data,
      Map<String, dynamic>? queryParmaters,
      bool isFormData = false}) async {
    try {
      final response = await dio.post(path,
          data: isFormData ? FormData.fromMap(data) : data,
          queryParameters: queryParmaters);
      return response.data;
    } on DioException catch (e) {
      exceptionSwitch(e);
    }
  }
}
