import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:workiom_technical_test/core/apis/http_overrides.dart';
import 'package:workiom_technical_test/core/config/app_configuration.dart';
import 'package:workiom_technical_test/core/config/app_options.dart';
import 'package:workiom_technical_test/core/constants/color_constants.dart';
import 'package:workiom_technical_test/core/di/injection.dart';
import 'package:workiom_technical_test/core/enums/screen_type.dart';
import 'package:workiom_technical_test/core/navigation/navigation_route.dart';
import 'package:workiom_technical_test/core/observers/bloc_observer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureDependencies();

  final config = getIt<BaseAppConfiguration>();
  final options = getIt<BaseAppOptions>();

  await config.init();
  await _initAppRotation(options);
  Bloc.observer = const AppBlocObserver();

  /// in case of network handshake error
  HttpOverrides.global = BadCertHttpOverrides();

  runApp(const MyApp());
}

Future<void> _initAppRotation(BaseAppOptions options) async {
  if (!(Platform.isIOS || Platform.isAndroid)) return;

  switch (options.orientation) {
    case OrientationOptions.portrait:
      await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);
      break;
    case OrientationOptions.landscape:
      await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ]);
      break;
    case OrientationOptions.both:
      await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ]);
      break;
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appConfig = getIt<BaseAppConfiguration>();
    final navigationRoute = getIt<NavigationRoute>();

    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;
        final orientation = constraints.maxWidth > constraints.maxHeight
            ? Orientation.landscape
            : Orientation.portrait;

        final designSize = appConfig.getDesignSize(screenWidth, orientation);

        return ScreenUtilInit(
          designSize: designSize,
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, _) {
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                scaffoldBackgroundColor: ColorConstants.background,
              ),
              routerConfig: navigationRoute.router,
            );
          },
        );
      },
    );
  }
}
