import 'package:dio/dio.dart';

abstract class ApiConsumer {
  Future<dynamic> get(
    String path, {
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    Map<String, String>? extraHeaders,
    ResponseType? responseType,
  });

  Future<dynamic> post(
    String path, {
    FormData? formData,
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    Map<String, String>? extraHeaders,
    ResponseType? responseType,
  });

  Future<dynamic> put(
    String path, {
    FormData? formData,
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    Map<String, String>? extraHeaders,
    ResponseType? responseType,
  });

  Future<dynamic> delete(
    String path, {
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    Map<String, String>? extraHeaders,
    ResponseType? responseType,
  });
}
