import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

abstract class BaseParams extends Equatable {
  const BaseParams({this.cancelToken});
  final CancelToken? cancelToken;
  Map<String, dynamic> toJson();
}
