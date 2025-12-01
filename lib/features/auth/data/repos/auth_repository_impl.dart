import 'package:injectable/injectable.dart';
import 'package:workiom_technical_test/core/apis/api_consumer.dart';
import 'package:workiom_technical_test/core/apis/end_points.dart';
import 'package:workiom_technical_test/core/connection/connection_info.dart';
import 'package:workiom_technical_test/core/errors/exception_handler.dart';
import 'package:workiom_technical_test/core/typedefs/result.dart';
import 'package:workiom_technical_test/features/auth/data/models/authenticate_result_model.dart';
import 'package:workiom_technical_test/features/auth/data/models/get_current_login_information_model.dart';
import 'package:workiom_technical_test/features/auth/data/models/get_editions_for_select_model.dart';
import 'package:workiom_technical_test/features/auth/data/models/password_complexity_setting_model.dart';
import 'package:workiom_technical_test/features/auth/data/models/register_tenant_result_model.dart';
import 'package:workiom_technical_test/features/auth/data/models/tenant_availability_model.dart';
import 'package:workiom_technical_test/features/auth/domain/bodies/authenticate_body.dart';
import 'package:workiom_technical_test/features/auth/domain/bodies/check_tenant_availability_params.dart';
import 'package:workiom_technical_test/features/auth/domain/bodies/register_tenant_body.dart';
import 'package:workiom_technical_test/features/auth/domain/entity/authenticate_result_entity.dart';
import 'package:workiom_technical_test/features/auth/domain/entity/get_current_login_information_entity.dart';
import 'package:workiom_technical_test/features/auth/domain/entity/get_editions_for_select_entity.dart';
import 'package:workiom_technical_test/features/auth/domain/entity/password_complexity_setting_entity.dart';
import 'package:workiom_technical_test/features/auth/domain/entity/register_tenant_result_entity.dart';
import 'package:workiom_technical_test/features/auth/domain/entity/tenant_availability_entity.dart';
import 'package:workiom_technical_test/features/auth/domain/params/register_tenant_params.dart';
import 'package:workiom_technical_test/features/auth/domain/repos/auth_repository.dart';

@Singleton(as: BaseAuthRepository)
class AuthRepositoryImpl implements BaseAuthRepository {
  final ApiConsumer _apiConsumer;
  final ConnectionInfo _connectionInfo;

  AuthRepositoryImpl({
    required ApiConsumer apiConsumer,
    required ConnectionInfo connectionInfo,
  }) : _apiConsumer = apiConsumer,
       _connectionInfo = connectionInfo;

  @override
  FutureResult<GetCurrentLoginInformation> getCurrentLoginInformation() async {
    return await handleNetworkRepositoryCall(
      connectionInfo: _connectionInfo,
      operation: () async {
        final response = await _apiConsumer.get(
          EndPoints.getCurrentLoginInformation,
        );
        final model = GetCurrentLoginInformationModel.fromJson(response);

        return model.toEntity();
      },
    );
  }

  @override
  FutureResult<GetEditionsForSelectEntity> getEditionsForSelect() async {
    return await handleNetworkRepositoryCall(
      connectionInfo: _connectionInfo,
      operation: () async {
        final response = await _apiConsumer.get(EndPoints.getEditionsForSelect);
        final model = GetEditionsForSelectModel.fromJson(response);
        return model.toEntity();
      },
    );
  }

  @override
  FutureResult<PasswordComplexitySettingEntity>
  getPasswordComplexitySetting() async {
    return await handleNetworkRepositoryCall(
      connectionInfo: _connectionInfo,
      operation: () async {
        final response = await _apiConsumer.get(
          EndPoints.getPasswordComplexitySetting,
        );
        final model = PasswordComplexitySettingModel.fromJson(response);
        return model.toEntity();
      },
    );
  }

  @override
  FutureResult<TenantAvailabilityEntity> isTenantAvailable({
    required CheckTenantAvailabilityParams body,
  }) async {
    return await handleNetworkRepositoryCall(
      connectionInfo: _connectionInfo,
      operation: () async {
        final response = await _apiConsumer.post(
          EndPoints.isTenantAvailable,
          body: body.toJson(),
        );
        final model = TenantAvailabilityModel.fromJson(response);
        return model.toEntity();
      },
    );
  }

  @override
  FutureResult<RegisterTenantResultEntity> registerTenant({
    required RegisterTenantBody body,
    required RegisterTenantParams params,
  }) async {
    return await handleNetworkRepositoryCall(
      connectionInfo: _connectionInfo,
      operation: () async {
        final response = await _apiConsumer.post(
          EndPoints.registerTenant,
          body: body.toMap(),
          queryParameters: params.toQueryParameters(),
        );
        final model = RegisterTenantResultModel.fromJson(response);
        return model.toEntity();
      },
    );
  }

  @override
  FutureResult<AuthenticateResultEntity> authenticate(
    AuthenticateBody body,
  ) async {
    return await handleNetworkRepositoryCall(
      connectionInfo: _connectionInfo,
      operation: () async {
        final response = await _apiConsumer.post(
          EndPoints.authenticate,
          body: body.toMap(),
        );
        final model = AuthenticateResultModel.fromJson(response);
        return model.toEntity();
      },
    );
  }
}
