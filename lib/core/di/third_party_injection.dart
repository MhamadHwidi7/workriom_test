import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:workiom_technical_test/core/apis/logging_interceptor.dart';

@module
abstract class ThirdPartyModule {
  @lazySingleton
  Dio dio(LoggingInterceptor loggingInterceptor) {
    final dio = Dio();
    dio.interceptors.add(loggingInterceptor);

    debugPrint(
      '[Dio] Interceptors: ${dio.interceptors.map((i) => i.runtimeType).toList()}',
    );

    return dio;
  }

  @lazySingleton
  InternetConnection get internetConnection => InternetConnection();
}
