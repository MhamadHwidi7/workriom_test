import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:workiom_technical_test/core/apis/api_consumer.dart';
import 'package:workiom_technical_test/core/apis/end_points.dart';
import 'package:workiom_technical_test/core/constants/strings_constant.dart';
import 'package:workiom_technical_test/core/helpers/secure_storage_helper.dart';

@Singleton(as: ApiConsumer)
class DioConsumer implements ApiConsumer {
  DioConsumer(this._client) {
    _client.options
      ..sendTimeout = const Duration(seconds: 10)
      ..connectTimeout = const Duration(seconds: 30)
      ..receiveTimeout = const Duration(seconds: 60)
      ..baseUrl = EndPoints.baseUrl
      ..responseType = ResponseType.plain
      ..followRedirects = true;
  }

  final Dio _client;

  Future<Map<String, String>> get _defaultHeaders async {
    final secureToken = await SecureStorageHelper.authToken;

    return {
      StringsConstants.accept: StringsConstants.applicationJson,
      StringsConstants.contentType: StringsConstants.applicationJson,
      if (secureToken != null && secureToken.isNotEmpty)
        StringsConstants.authorization: 'Bearer $secureToken',
    };
  }

  @override
  Future<dynamic> get(
    String path, {
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    Map<String, String>? extraHeaders,
    ResponseType? responseType,
  }) async {
    try {
      final baseHeaders = await _defaultHeaders;
      final headers = {
        ...baseHeaders,
        if (extraHeaders != null) ...extraHeaders,
      };

      final response = await _client.get(
        path,
        queryParameters: queryParameters,
        cancelToken: cancelToken,
        options: Options(
          headers: headers,
          responseType: responseType ?? ResponseType.plain,
        ),
      );
      return _handleResponseAsJson(response);
    } catch (error) {
      rethrow;
    }
  }

  @override
  Future<dynamic> post(
    String path, {
    FormData? formData,
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    Map<String, String>? extraHeaders,
    ResponseType? responseType,
  }) async {
    try {
      final baseHeaders = await _defaultHeaders;
      final headers = {
        ...baseHeaders,
        if (extraHeaders != null) ...extraHeaders,
      };

      final response = await _client.post(
        path,
        data: formData ?? body,
        queryParameters: queryParameters,
        cancelToken: cancelToken,
        options: Options(
          headers: headers,
          contentType: formData == null
              ? StringsConstants.jsonContentType
              : null,
          responseType: responseType ?? ResponseType.plain,
        ),
      );
      return _handleResponseAsJson(response);
    } catch (error) {
      rethrow;
    }
  }

  @override
  Future<dynamic> put(
    String path, {
    FormData? formData,
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    Map<String, String>? extraHeaders,
    ResponseType? responseType,
  }) async {
    try {
      final baseHeaders = await _defaultHeaders;
      final headers = {
        ...baseHeaders,
        if (extraHeaders != null) ...extraHeaders,
      };

      final response = await _client.put(
        path,
        data: formData ?? body,
        queryParameters: queryParameters,
        cancelToken: cancelToken,
        options: Options(
          headers: headers,
          contentType: StringsConstants.jsonContentType,
          responseType: responseType ?? ResponseType.plain,
        ),
      );
      return _handleResponseAsJson(response);
    } catch (error) {
      rethrow;
    }
  }

  @override
  Future<dynamic> delete(
    String path, {
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    Map<String, String>? extraHeaders,
    ResponseType? responseType,
  }) async {
    try {
      final baseHeaders = await _defaultHeaders;
      final headers = {
        ...baseHeaders,
        if (extraHeaders != null) ...extraHeaders,
      };

      final response = await _client.delete(
        path,
        data: body,
        queryParameters: queryParameters,
        cancelToken: cancelToken,
        options: Options(
          headers: headers,
          contentType: StringsConstants.jsonContentType,
          responseType: responseType ?? ResponseType.plain,
        ),
      );
      return _handleResponseAsJson(response);
    } catch (error) {
      rethrow;
    }
  }

  dynamic _handleResponseAsJson(Response response) {
    return jsonDecode(response.data.toString());
  }
}
