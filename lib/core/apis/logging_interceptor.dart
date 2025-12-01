import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@lazySingleton
class LoggingInterceptor extends Interceptor {
  LoggingInterceptor()
    : _log = Logger(
        printer: PrettyPrinter(
          methodCount: 0,
          errorMethodCount: 0,
          colors: false,
          dateTimeFormat: (date) => DateTimeFormat.dateAndTime(date),
        ),
      );

  final Logger _log;

  static const _kStartKey = '_req_start_ms';

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.extra[_kStartKey] = DateTime.now().millisecondsSinceEpoch;

    if (kDebugMode) {
      final headers = options.headers.entries
          .map((e) => '  ${e.key}: ${e.value}')
          .join('\n');

      final bodyStr = _prettyBody(options.data);

      _log.i(
        [
          '━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━',
          '📤 API REQUEST',
          '➡️  URI: ${options.uri}',
          '🔹 METHOD: ${options.method}',
          '🧾 HEADERS:\n$headers',
          if (bodyStr != null) '📦 BODY:\n$bodyStr',
          '━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━',
        ].join('\n'),
      );
    }

    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final took = _elapsedMs(response.requestOptions);

    if (kDebugMode) {
      final bodyStr = _prettyBody(response.data);

      _log.i(
        [
          '━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━',
          '📥 API RESPONSE (${took}ms)',
          '⬅️  URI: ${response.realUri}',
          '✅ STATUS: ${response.statusCode}',
          if (bodyStr != null) '📄 BODY:\n$bodyStr',
          '━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━',
        ].join('\n'),
      );
    }

    handler.next(response);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    final status = err.response?.statusCode ?? 0;
    final took = _elapsedMs(err.requestOptions);

    if (kDebugMode) {
      final bodyStr = _prettyBody(err.response?.data);

      _log.e(
        [
          '━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━',
          '❌ API ERROR (${took}ms)',
          '🚨 URI: ${err.requestOptions.uri}',
          '🚩 STATUS: $status',
          if (bodyStr != null) '⚠️ ERROR BODY:\n$bodyStr',
          '━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━',
        ].join('\n'),
      );
    }

    handler.next(err);
  }

  String? _prettyBody(dynamic body) {
    if (body == null) return null;

    if (body is FormData) {
      final fields = body.fields.map((e) => '${e.key}=${e.value}').join(', ');
      final files = body.files.map((e) => e.key).join(', ');
      return '(FormData) fields=[$fields], files=[$files]';
    }

    try {
      final pretty = const JsonEncoder.withIndent(
        '  ',
      ).convert(body is String ? json.decode(body) : body);
      return pretty;
    } catch (_) {
      // not JSON; just return raw
      return body.toString();
    }
  }

  int _elapsedMs(RequestOptions options) {
    final start = options.extra[_kStartKey] as int?;
    if (start == null) return 0;
    return DateTime.now().millisecondsSinceEpoch - start;
  }
}
