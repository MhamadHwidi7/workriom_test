import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:workiom_technical_test/core/constants/router_constants.dart';
import 'package:workiom_technical_test/core/di/injection.dart';
import 'package:workiom_technical_test/core/navigation/animations/animation_route.dart';
import 'package:workiom_technical_test/core/navigation/args/create_workspace_args.dart';
import 'package:workiom_technical_test/features/auth/presentation/manager/authenticate_cubit.dart';
import 'package:workiom_technical_test/features/auth/presentation/manager/editions_for_select_cubit.dart';
import 'package:workiom_technical_test/features/auth/presentation/manager/password_complexity_setting_cubit.dart';
import 'package:workiom_technical_test/features/auth/presentation/manager/register_tenant_cubit.dart';
import 'package:workiom_technical_test/features/auth/presentation/manager/tenant_availability_cubit.dart';
import 'package:workiom_technical_test/features/auth/presentation/manager/ui_logic/create_workspace_form_cubit.dart';
import 'package:workiom_technical_test/features/auth/presentation/manager/ui_logic/editions_ui_cubit.dart';
import 'package:workiom_technical_test/features/auth/presentation/screens/create_workspace_screen.dart';
import 'package:workiom_technical_test/features/auth/presentation/screens/sign_up_option_screen.dart';
import 'package:workiom_technical_test/features/auth/presentation/screens/sign_up_password_screen.dart';
import 'package:workiom_technical_test/features/home/presentation/screens/sign_up_success_screen.dart';
import 'package:workiom_technical_test/features/splash/presentation/manager/splash_cubit.dart';
import 'package:workiom_technical_test/features/splash/presentation/screen/splash_screen.dart';

@LazySingleton()
class NavigationRoute {
  NavigationRoute() {
    _currentRouter = _buildRouter();
  }

  late GoRouter _currentRouter;
  final GlobalKey<NavigatorState> _routerKey = GlobalKey(debugLabel: 'root');

  GoRouter get router => _currentRouter;
  GlobalKey<NavigatorState> get routerKey => _routerKey;

  GoRouter refreshRouter() {
    _currentRouter = _buildRouter();
    return _currentRouter;
  }

  GoRouter _buildRouter() {
    return GoRouter(
      navigatorKey: _routerKey,
      initialLocation: RouterPaths.splash,
      routes: <RouteBase>[
        GoRoute(
          path: RouterPaths.splash,
          name: RouterNames.splash,
          pageBuilder: (context, state) {
            return FadePage(
              child: BlocProvider(
                create: (_) => getIt<SplashCubit>()..checkSession(),
                child: const SplashScreen(),
              ),
            );
          },
        ),

        GoRoute(
          path: RouterPaths.signUpOption,
          name: RouterNames.signUpOption,
          builder: (context, state) => const SignUpOptionScreen(),
        ),
        GoRoute(
          path: RouterPaths.signUpPassword,
          name: RouterNames.signUpPassword,
          pageBuilder: (context, state) {
            return SlideRightPage(
              child: MultiBlocProvider(
                providers: [
                  BlocProvider(
                    create: (_) =>
                        getIt<PasswordComplexitySettingCubit>()..load(),
                  ),
                  BlocProvider(
                    create: (_) => getIt<EditionsForSelectCubit>()..load(),
                  ),
                  BlocProvider(create: (_) => getIt<EditionsUiCubit>()),
                ],
                child: const SignUpPasswordScreen(),
              ),
            );
          },
        ),
        GoRoute(
          path: RouterPaths.createWorkspace,
          name: RouterNames.createWorkspace,
          builder: (context, state) {
            final args = state.extra as CreateWorkspaceArgs;

            return MultiBlocProvider(
              providers: [
                //! this cubit if for textfield management
                BlocProvider(create: (_) => getIt<CreateWorkspaceFormCubit>()),
                //! this cubit is for tenant and checking availability and debouncing
                BlocProvider(create: (_) => getIt<TenantAvailabilityCubit>()),
                // ! this cubit for registering the tenant
                BlocProvider(create: (_) => getIt<RegisterTenantCubit>()),
                //!to make authenticate and navigation
                BlocProvider(create: (_) => getIt<AuthenticateCubit>()),
              ],
              child: CreateWorkspaceScreen(args: args),
            );
          },
        ),

        GoRoute(
          path: RouterPaths.signUpSuccess,
          name: RouterNames.signUpSuccess,
          pageBuilder: (context, state) {
            return SlideRightPage(child: const SignUpSuccessScreen());
          },
        ),
      ],
    );
  }
}
