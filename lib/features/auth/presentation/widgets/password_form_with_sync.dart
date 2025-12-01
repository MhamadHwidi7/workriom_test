import 'package:colorful_print/colorful_print.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:workiom_technical_test/core/constants/router_constants.dart';
import 'package:workiom_technical_test/core/constants/text_constants.dart';
import 'package:workiom_technical_test/core/navigation/args/create_workspace_args.dart';
import 'package:workiom_technical_test/core/widgets/app_button.dart';
import 'package:workiom_technical_test/core/widgets/password_form_section.dart';
import 'package:workiom_technical_test/features/auth/domain/entity/password_complexity_setting_entity.dart';
import 'package:workiom_technical_test/features/auth/presentation/manager/ui_logic/editions_ui_cubit.dart';
import 'package:workiom_technical_test/features/auth/presentation/manager/ui_logic/password_form_cubit.dart';

class PasswordFormWithSync extends StatelessWidget {
  const PasswordFormWithSync({super.key, required this.settings});

  final PasswordComplexitySettingEntity settings;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Padding(
          padding: EdgeInsets.all(16),
          child: PasswordFormSection(),
        ),
        const SizedBox(height: 32),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: BlocBuilder<PasswordFormCubit, PasswordFormState>(
            builder: (context, state) {
              final formCubit = context.read<PasswordFormCubit>();

              final isStrong = formCubit.isStrong;
              final isEmailValid = formCubit.isEmailValid;

              final selectedEditionId = context.select<EditionsUiCubit, int?>(
                (c) => c.state.selectedEditionId,
              );

              final canSubmit =
                  isStrong && isEmailValid && selectedEditionId != null;

              return AppButton.login(
                label: TextConstants.signUpConfirmPassword,
                isValid: canSubmit,
                onPressed: canSubmit
                    ? () {
                        final email = formCubit.emailController.text.trim();
                        final password = formCubit.passwordController.text
                            .trim();

                        final args = CreateWorkspaceArgs(
                          email: email,
                          password: password,
                          editionId: selectedEditionId,
                        );

                        if (!kReleaseMode) {
                          printColor(
                            args.toString(),
                            textColor: TextColor.cyan,
                          );
                        }

                        context.pushNamed(
                          RouterNames.createWorkspace,
                          extra: args,
                        );
                      }
                    : null,
              );
            },
          ),
        ),
      ],
    );
  }
}
