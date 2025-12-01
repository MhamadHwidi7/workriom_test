import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:workiom_technical_test/core/constants/color_constants.dart';
import 'package:workiom_technical_test/core/constants/svg_constants.dart';
import 'package:workiom_technical_test/core/constants/text_constants.dart';
import 'package:workiom_technical_test/core/enums/app_button_variant.dart';
import 'package:workiom_technical_test/core/theme/app_typography.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.variant = AppButtonVariant.primary,
    this.leading,
    this.trailing,
    this.fullWidth = true,
    this.textColorOverride,
  });

  final String label;
  final VoidCallback? onPressed;
  final AppButtonVariant variant;
  final Widget? leading;
  final Widget? trailing;
  final bool fullWidth;
  final Color? textColorOverride;

  @override
  Widget build(BuildContext context) {
    final background = _backgroundColor();
    final foreground = textColorOverride ?? _foregroundColor();
    final textStyle = _labelTextStyle().copyWith(color: foreground);

    return SizedBox(
      height: 50,
      width: fullWidth ? double.infinity : null,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: background,
          foregroundColor: foreground,
          disabledForegroundColor: foreground,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16),
        ),
        onPressed: onPressed,
        child: _buildContent(textStyle),
      ),
    );
  }

  Widget _buildContent(TextStyle textStyle) {
    if (leading == null && trailing != null) {
      return Row(
        mainAxisSize: fullWidth ? MainAxisSize.max : MainAxisSize.min,
        children: [
          const SizedBox(width: 32),
          Expanded(
            child: Center(
              child: Text(
                label,
                style: textStyle,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          SizedBox(width: 32, child: Center(child: trailing)),
        ],
      );
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: fullWidth ? MainAxisSize.max : MainAxisSize.min,
      children: [
        if (leading != null) ...[leading!, const SizedBox(width: 8)],
        Flexible(
          child: Text(label, style: textStyle, overflow: TextOverflow.ellipsis),
        ),
      ],
    );
  }

  Color _backgroundColor() {
    switch (variant) {
      case AppButtonVariant.primary:
        return ColorConstants.primary;
      case AppButtonVariant.secondary:
        return ColorConstants.backgroundGray;
    }
  }

  Color _foregroundColor() {
    switch (variant) {
      case AppButtonVariant.primary:
        return Colors.white;
      case AppButtonVariant.secondary:
        return ColorConstants.textPrimary;
    }
  }

  TextStyle _labelTextStyle() {
    return AppTypography.bodyMedium;
  }

  factory AppButton.google({Key? key, required VoidCallback? onPressed}) {
    return AppButton(
      key: key,
      label: TextConstants.signUpContinueWithEmail,
      onPressed: onPressed,
      variant: AppButtonVariant.secondary,
      leading: SvgPicture.asset(SvgConstants.google),
    );
  }

  factory AppButton.primary({
    Key? key,
    required String label,
    required VoidCallback? onPressed,
    Widget? trailing,
  }) {
    return AppButton(
      key: key,
      label: label,
      onPressed: onPressed,
      trailing: trailing ?? SvgPicture.asset(SvgConstants.emailButton),
    );
  }

  factory AppButton.login({
    Key? key,
    required String label,
    required bool isValid,
    required VoidCallback? onPressed,
    Widget? trailing,
  }) {
    return AppButton(
      key: key,
      label: label,
      onPressed: isValid ? onPressed : null,
      variant: isValid ? AppButtonVariant.primary : AppButtonVariant.secondary,
      textColorOverride: Colors.white,
      trailing:
          trailing ??
          SvgPicture.asset(SvgConstants.emailButton, height: 18, width: 18),
    );
  }
}
