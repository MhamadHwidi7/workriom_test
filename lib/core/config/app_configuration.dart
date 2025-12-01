//!This class it contain multiple core functions
//! for get device info
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:workiom_technical_test/core/config/app_options.dart';
import 'package:workiom_technical_test/core/enums/screen_type.dart';
import 'package:workiom_technical_test/core/enums/system_type.dart';

abstract class BaseAppConfiguration {
  Future<void> init();

  SystemType get os;
  ScreenType get screenType;
  bool get isMobile;
  bool get isTablet;
  bool get isDesktop;

  Size getDesignSize(double width, Orientation orientation);
  BaseAppOptions get options;
}

@LazySingleton(as: BaseAppConfiguration)
class AppConfigurationImpl implements BaseAppConfiguration {
  AppConfigurationImpl(this._options);

  final BaseAppOptions _options;

  SystemType? _os;
  ScreenType _screenType = ScreenType.phone;

  @override
  BaseAppOptions get options => _options;

  @override
  SystemType get os => _os ?? SystemType.web;

  @override
  bool get isMobile => _screenType == ScreenType.phone;

  @override
  bool get isTablet => _screenType == ScreenType.tablet;

  @override
  bool get isDesktop => _screenType == ScreenType.desktop;

  @override
  ScreenType get screenType => _screenType;

  @override
  Future<void> init() async {
    if (kIsWeb) {
      _os = SystemType.web;
    } else {
      if (Platform.isIOS) _os = SystemType.ios;
      if (Platform.isAndroid) _os = SystemType.android;
    }
  }

  @override
  Size getDesignSize(double screenWidth, Orientation orientation) {
    _computeScreenType(screenWidth);

    if (screenWidth < 600) {
      return orientation == Orientation.portrait
          ? const Size(375, 812)
          : const Size(812, 375);
    } else if (screenWidth < 1400) {
      return orientation == Orientation.portrait
          ? const Size(1024, 1366)
          : const Size(1366, 1024);
    } else {
      return orientation == Orientation.portrait
          ? const Size(1080, 1920)
          : const Size(1920, 1080);
    }
  }

  void _computeScreenType(double width) {
    if (width < 600) {
      _screenType = ScreenType.phone;
    } else if (width < 1400) {
      _screenType = ScreenType.tablet;
    } else {
      _screenType = ScreenType.desktop;
    }
  }
}
