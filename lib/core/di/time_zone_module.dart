import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:injectable/injectable.dart';

@module
abstract class TimeZoneModule {
  @lazySingleton
  Future<TimezoneInfo> get deviceTimeZone async =>
      await FlutterTimezone.getLocalTimezone();
}
