import 'package:workiom_technical_test/core/typedefs/result.dart';
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

abstract class BaseAuthRepository {
  FutureResult<GetCurrentLoginInformation> getCurrentLoginInformation();
  FutureResult<GetEditionsForSelectEntity> getEditionsForSelect();
  FutureResult<PasswordComplexitySettingEntity> getPasswordComplexitySetting();
  FutureResult<TenantAvailabilityEntity> isTenantAvailable({
    required CheckTenantAvailabilityParams body,
  });
  FutureResult<RegisterTenantResultEntity> registerTenant({
    required RegisterTenantBody body,
    required RegisterTenantParams params,
  });
  FutureResult<AuthenticateResultEntity> authenticate(AuthenticateBody body);
}
