import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:workiom_technical_test/core/constants/color_constants.dart';
import 'package:workiom_technical_test/core/constants/svg_constants.dart';
import 'package:workiom_technical_test/core/constants/text_constants.dart';
import 'package:workiom_technical_test/core/states/api_state.dart';
import 'package:workiom_technical_test/core/theme/app_typography.dart';
import 'package:workiom_technical_test/core/widgets/labeled_underline_field.dart';
import 'package:workiom_technical_test/features/auth/domain/entity/password_complexity_setting_entity.dart';
import 'package:workiom_technical_test/features/auth/presentation/manager/password_complexity_setting_cubit.dart';
import 'package:workiom_technical_test/features/auth/presentation/manager/ui_logic/password_form_cubit.dart';

class PasswordFormSection extends StatelessWidget {
  const PasswordFormSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PasswordFormCubit, PasswordFormState>(
      builder: (context, state) {
        final cubit = context.read<PasswordFormCubit>();
        final checks = state.checks;
        final bool showEmailError =
            state.email.isNotEmpty && !state.isEmailValid;

        final Color? emailBorderColor = showEmailError ? Colors.red : null;
        final Color? emailFocusedBorderColor = showEmailError
            ? Colors.red
            : null;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              TextConstants.passwordWorkEmailLabel,
              style: AppTypography.body.copyWith(
                color: ColorConstants.textPrimary,
              ),
            ),
            const SizedBox(height: 8),

            LabeledUnderlineField(
              controller: cubit.emailController,
              focusNode: cubit.emailFocusNode,
              hintText: TextConstants.passwordWorkEmailHint,
              leadingIcon: SvgPicture.asset(SvgConstants.mail),
              trailingIcon: GestureDetector(
                onTap: cubit.clearEmail,
                child: SvgPicture.asset(SvgConstants.close),
              ),
              keyboardType: TextInputType.emailAddress,
              borderColor: emailBorderColor,
              focusedBorderColor: emailFocusedBorderColor,
            ),
            const SizedBox(height: 24),
            Text(
              TextConstants.passwordLabel,
              style: AppTypography.body.copyWith(
                color: ColorConstants.textPrimary,
              ),
            ),
            const SizedBox(height: 8),
            LabeledUnderlineField(
              controller: cubit.passwordController,
              focusNode: cubit.passwordFocusNode,
              hintText: TextConstants.passwordHint,
              obscureText: state.obscurePassword,
              leadingIcon: SvgPicture.asset(SvgConstants.changePassword),
              trailingIcon: GestureDetector(
                onTap: cubit.toggleObscure,
                child: SvgPicture.asset(SvgConstants.eye),
              ),
            ),

            const SizedBox(height: 24),

            _PasswordStrengthBar(value: state.strength),
            const SizedBox(height: 8),
            BlocBuilder<
              PasswordComplexitySettingCubit,
              ApiState<PasswordComplexitySettingEntity>
            >(
              builder: (context, apiState) {
                final effectiveSettings = apiState.maybeWhen(
                  success: (data) => data,
                  orElse: () => cubit.settings,
                );

                if (checks == null) {
                  return const SizedBox.shrink();
                }

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 12),
                    _PasswordRequirementsPanel(
                      isStrong: cubit.isStrong,
                      settings: effectiveSettings,
                      checks: checks,
                    ),
                  ],
                );
              },
            ),
          ],
        );
      },
    );
  }
}

class _PasswordStrengthBar extends StatelessWidget {
  const _PasswordStrengthBar({required this.value});

  final double value;

  @override
  Widget build(BuildContext context) {
    final clamped = value.clamp(0.3, 1.0);

    return SizedBox(
      height: 7,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(999),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Container(color: ColorConstants.border),
            FractionallySizedBox(
              widthFactor: clamped,
              alignment: Alignment.centerLeft,
              child: Container(
                color: value == 1
                    ? ColorConstants.greenStepper
                    : ColorConstants.mangoStepper,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PasswordRequirementsPanel extends StatelessWidget {
  const _PasswordRequirementsPanel({
    required this.isStrong,
    required this.settings,
    required this.checks,
  });

  final bool isStrong;
  final PasswordComplexitySettingEntity settings;
  final PasswordChecks checks;

  @override
  Widget build(BuildContext context) {
    final iconAsset = isStrong ? SvgConstants.checkForm : SvgConstants.infoForm;
    final labelText = isStrong
        ? TextConstants.passwordStrong
        : TextConstants.passwordNotStrongEnough;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SvgPicture.asset(iconAsset),
            const SizedBox(width: 8),
            Text(
              labelText,
              style: AppTypography.infoBody.copyWith(
                color: ColorConstants.textPrimary,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),

        _RequirementRow(
          passed: checks.hasMinLength,
          text:
              'Passwords must have at least ${settings.requiredLength} characters.',
        ),
        if (settings.requireUppercase)
          _RequirementRow(
            passed: checks.hasUppercase,
            text: TextConstants.passwordUppercaseRequirement,
          ),
      ],
    );
  }
}

class _RequirementRow extends StatelessWidget {
  const _RequirementRow({required this.passed, required this.text});

  final bool passed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            passed ? SvgConstants.checkForm : SvgConstants.errorForm,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: AppTypography.bodyVerySmall.copyWith(
                color: ColorConstants.textSecondary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
