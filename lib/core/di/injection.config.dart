// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:flutter_timezone/flutter_timezone.dart' as _i335;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    as _i161;
import 'package:logger/logger.dart' as _i974;

import '../../features/auth/data/repos/auth_repository_impl.dart' as _i1006;
import '../../features/auth/domain/entity/password_complexity_setting_entity.dart'
    as _i628;
import '../../features/auth/domain/repos/auth_repository.dart' as _i918;
import '../../features/auth/domain/use_cases/authenticate_usecase.dart'
    as _i900;
import '../../features/auth/domain/use_cases/check_tenant_availability_usecase.dart'
    as _i906;
import '../../features/auth/domain/use_cases/get_current_login_information_usecase.dart'
    as _i59;
import '../../features/auth/domain/use_cases/get_editions_for_select_usecase.dart'
    as _i889;
import '../../features/auth/domain/use_cases/get_password_complexity_setting_usecase.dart'
    as _i885;
import '../../features/auth/domain/use_cases/register_tenant_usecase.dart'
    as _i205;
import '../../features/auth/presentation/manager/authenticate_cubit.dart'
    as _i160;
import '../../features/auth/presentation/manager/current_login_information_cubit.dart'
    as _i389;
import '../../features/auth/presentation/manager/editions_for_select_cubit.dart'
    as _i735;
import '../../features/auth/presentation/manager/password_complexity_setting_cubit.dart'
    as _i280;
import '../../features/auth/presentation/manager/register_tenant_cubit.dart'
    as _i342;
import '../../features/auth/presentation/manager/tenant_availability_cubit.dart'
    as _i1032;
import '../../features/auth/presentation/manager/ui_logic/create_workspace_form_cubit.dart'
    as _i874;
import '../../features/auth/presentation/manager/ui_logic/editions_ui_cubit.dart'
    as _i270;
import '../../features/auth/presentation/manager/ui_logic/password_form_cubit.dart'
    as _i722;
import '../../features/splash/presentation/manager/splash_cubit.dart' as _i478;
import '../apis/api_consumer.dart' as _i947;
import '../apis/dio_consumer.dart' as _i545;
import '../apis/logging_interceptor.dart' as _i861;
import '../config/app_configuration.dart' as _i24;
import '../config/app_options.dart' as _i687;
import '../connection/connection_info.dart' as _i870;
import '../helpers/secure_storage_helper.dart' as _i421;
import '../navigation/navigation_route.dart' as _i254;
import '../timezone/time_zone_service.dart' as _i387;
import 'logger_module.dart' as _i987;
import 'third_party_injection.dart' as _i110;
import 'time_zone_module.dart' as _i474;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final loggerModule = _$LoggerModule();
    final thirdPartyModule = _$ThirdPartyModule();
    final timeZoneModule = _$TimeZoneModule();
    gh.factory<_i874.CreateWorkspaceFormCubit>(
      () => _i874.CreateWorkspaceFormCubit(),
    );
    gh.factory<_i270.EditionsUiCubit>(() => _i270.EditionsUiCubit());
    gh.singleton<_i421.SecureStorageHelper>(() => _i421.SecureStorageHelper());
    gh.lazySingleton<_i861.LoggingInterceptor>(
      () => _i861.LoggingInterceptor(),
    );
    gh.lazySingleton<_i974.Logger>(() => loggerModule.logger);
    gh.lazySingleton<_i161.InternetConnection>(
      () => thirdPartyModule.internetConnection,
    );
    gh.lazySingletonAsync<_i335.TimezoneInfo>(
      () => timeZoneModule.deviceTimeZone,
    );
    gh.lazySingleton<_i254.NavigationRoute>(() => _i254.NavigationRoute());
    gh.factoryParam<
      _i722.PasswordFormCubit,
      _i628.PasswordComplexitySettingEntity,
      dynamic
    >((initialSettings, _) => _i722.PasswordFormCubit(initialSettings));
    gh.lazySingleton<_i387.BaseTimeZoneService>(
      () => _i387.DeviceTimeZoneService(),
    );
    gh.lazySingleton<_i687.BaseAppOptions>(() => _i687.AppOptions());
    gh.lazySingleton<_i361.Dio>(
      () => thirdPartyModule.dio(gh<_i861.LoggingInterceptor>()),
    );
    gh.lazySingleton<_i24.BaseAppConfiguration>(
      () => _i24.AppConfigurationImpl(gh<_i687.BaseAppOptions>()),
    );
    gh.singleton<_i947.ApiConsumer>(() => _i545.DioConsumer(gh<_i361.Dio>()));
    gh.lazySingleton<_i870.ConnectionInfo>(
      () => _i870.ConnectionInfoImpl(gh<_i161.InternetConnection>()),
    );
    gh.singleton<_i918.BaseAuthRepository>(
      () => _i1006.AuthRepositoryImpl(
        apiConsumer: gh<_i947.ApiConsumer>(),
        connectionInfo: gh<_i870.ConnectionInfo>(),
      ),
    );
    gh.factory<_i900.AuthenticateUseCase>(
      () => _i900.AuthenticateUseCase(gh<_i918.BaseAuthRepository>()),
    );
    gh.factory<_i906.CheckTenantAvailabilityUseCase>(
      () =>
          _i906.CheckTenantAvailabilityUseCase(gh<_i918.BaseAuthRepository>()),
    );
    gh.factory<_i59.GetCurrentLoginInformationUseCase>(
      () => _i59.GetCurrentLoginInformationUseCase(
        gh<_i918.BaseAuthRepository>(),
      ),
    );
    gh.factory<_i889.GetEditionsForSelectUseCase>(
      () => _i889.GetEditionsForSelectUseCase(gh<_i918.BaseAuthRepository>()),
    );
    gh.factory<_i885.GetPasswordComplexitySettingUseCase>(
      () => _i885.GetPasswordComplexitySettingUseCase(
        gh<_i918.BaseAuthRepository>(),
      ),
    );
    gh.factory<_i205.RegisterTenantUseCase>(
      () => _i205.RegisterTenantUseCase(gh<_i918.BaseAuthRepository>()),
    );
    gh.factory<_i735.EditionsForSelectCubit>(
      () =>
          _i735.EditionsForSelectCubit(gh<_i889.GetEditionsForSelectUseCase>()),
    );
    gh.factory<_i389.CurrentLoginInformationCubit>(
      () => _i389.CurrentLoginInformationCubit(
        gh<_i59.GetCurrentLoginInformationUseCase>(),
      ),
    );
    gh.factory<_i478.SplashCubit>(
      () => _i478.SplashCubit(gh<_i59.GetCurrentLoginInformationUseCase>()),
    );
    gh.factory<_i280.PasswordComplexitySettingCubit>(
      () => _i280.PasswordComplexitySettingCubit(
        gh<_i885.GetPasswordComplexitySettingUseCase>(),
      ),
    );
    gh.factory<_i342.RegisterTenantCubit>(
      () => _i342.RegisterTenantCubit(
        gh<_i205.RegisterTenantUseCase>(),
        gh<_i387.BaseTimeZoneService>(),
      ),
    );
    gh.factory<_i160.AuthenticateCubit>(
      () => _i160.AuthenticateCubit(
        gh<_i900.AuthenticateUseCase>(),
        gh<_i387.BaseTimeZoneService>(),
      ),
    );
    gh.factory<_i1032.TenantAvailabilityCubit>(
      () => _i1032.TenantAvailabilityCubit(
        gh<_i906.CheckTenantAvailabilityUseCase>(),
      ),
    );
    return this;
  }
}

class _$LoggerModule extends _i987.LoggerModule {}

class _$ThirdPartyModule extends _i110.ThirdPartyModule {}

class _$TimeZoneModule extends _i474.TimeZoneModule {}
