import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workiom_technical_test/core/constants/password_constants.dart';
import 'package:workiom_technical_test/core/constants/text_constants.dart';
import 'package:workiom_technical_test/core/di/injection.dart';
import 'package:workiom_technical_test/core/errors/app_exceptions.dart';
import 'package:workiom_technical_test/core/states/api_state.dart';
import 'package:workiom_technical_test/core/widgets/api_error_retry_widget.dart';
import 'package:workiom_technical_test/features/auth/domain/entity/get_editions_for_select_entity.dart';
import 'package:workiom_technical_test/features/auth/domain/entity/password_complexity_setting_entity.dart';
import 'package:workiom_technical_test/features/auth/presentation/manager/editions_for_select_cubit.dart';
import 'package:workiom_technical_test/features/auth/presentation/manager/password_complexity_setting_cubit.dart';
import 'package:workiom_technical_test/features/auth/presentation/manager/ui_logic/editions_ui_cubit.dart';
import 'package:workiom_technical_test/features/auth/presentation/manager/ui_logic/password_form_cubit.dart';
import 'package:workiom_technical_test/features/auth/presentation/widgets/bottom_branding_widget.dart';
import 'package:workiom_technical_test/features/auth/presentation/widgets/password_form_with_sync.dart';
import 'package:workiom_technical_test/features/auth/presentation/widgets/sign_up_header_widget.dart';
import 'package:workiom_technical_test/features/auth/presentation/widgets/sign_up_top_bar_widget.dart';

class SignUpPasswordScreen extends StatelessWidget {
  const SignUpPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child:
            BlocConsumer<
              EditionsForSelectCubit,
              ApiState<GetEditionsForSelectEntity>
            >(
              listenWhen: (previous, current) => previous != current,
              listener: (context, state) {
                state.whenOrNull(
                  success: (data) {
                    context.read<EditionsUiCubit>().setFromEditions(data);
                  },
                );
              },
              builder: (context, editionsState) {
                final hasError = editionsState.maybeWhen(
                  failure: (_, __) => true,
                  orElse: () => false,
                );

                if (hasError) {
                  final message = editionsState.maybeWhen(
                    failure: (failure, __) =>
                        AppExceptions.getErrorMessage(failure),
                    orElse: () => TextConstants.errorMessageGeneric,
                  );

                  return ApiErrorRetryWidget(
                    message: message,
                    onRetry: () {
                      context.read<EditionsForSelectCubit>().load();
                      context.read<PasswordComplexitySettingCubit>().load();
                    },
                  );
                }
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SignUpTopBarWidget(showTopText: false),
                      const SizedBox(height: 24),
                      const SignUpHeaderWidget(
                        title: TextConstants.signUpTitle,
                        subtitle: TextConstants.signUpSubtitle,
                      ),
                      const SizedBox(height: 32),

                      const Spacer(),

                      BlocBuilder<
                        PasswordComplexitySettingCubit,
                        ApiState<PasswordComplexitySettingEntity>
                      >(
                        builder: (context, state) {
                          final settings = state.maybeWhen(
                            success: (data) => data,
                            orElse: () => defaultPasswordSettings,
                          );

                          return BlocProvider(
                            create: (_) =>
                                getIt<PasswordFormCubit>(param1: settings),
                            child: PasswordFormWithSync(settings: settings),
                          );
                        },
                      ),

                      const Spacer(),

                      const BottomBranding(showLang: false),
                    ],
                  ),
                );
              },
            ),
      ),
    );
  }
}
