import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:injectable/injectable.dart';

abstract class BaseTimeZoneService {
  Future<String> getCurrentTimeZone();
}

@LazySingleton(as: BaseTimeZoneService)
class DeviceTimeZoneService implements BaseTimeZoneService {
  @override
  Future<String> getCurrentTimeZone() async {
    try {
      final timeData = await FlutterTimezone.getLocalTimezone();
      return timeData.identifier;
    } catch (_) {
      return 'UTC';
    }
  }
}
