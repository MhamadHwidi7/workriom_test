import 'package:injectable/injectable.dart';
import 'package:workiom_technical_test/core/config/options_configuration.dart';
import 'package:workiom_technical_test/core/enums/screen_type.dart';

abstract class BaseAppOptions {
  OrientationOptions get orientation;
  ErrorWidgetOptions get errorViewOption;
  bool get changeLangRestart;
  bool get enableDioPrinting;
  bool get enableErrorCatcher;
  bool get forceLocationPermission;
  bool get enableNotification;
}

@LazySingleton(as: BaseAppOptions)
class AppOptions implements BaseAppOptions {
  AppOptions() : _json = appOptions;

  final Map<String, dynamic> _json;

  @override
  OrientationOptions get orientation =>
      _json['orientation'] ?? OrientationOptions.both;

  @override
  ErrorWidgetOptions get errorViewOption =>
      _json['error_view_option'] ?? ErrorWidgetOptions.img;

  @override
  bool get changeLangRestart => _json['change_lang_restart'] ?? false;

  @override
  bool get enableDioPrinting => _json['enable_dio_printing'] ?? true;

  @override
  bool get enableErrorCatcher => _json['enable_error_catcher'] ?? true;

  @override
  bool get forceLocationPermission =>
      _json['force_location_permission'] ?? false;

  @override
  bool get enableNotification => _json['enable_notification'] ?? false;
}
