import 'package:flutter/material.dart';
import 'package:workiom_technical_test/core/constants/color_constants.dart';
import 'package:workiom_technical_test/core/theme/app_typography.dart';

class LabeledUnderlineField extends StatelessWidget {
  const LabeledUnderlineField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.leadingIcon,
    this.trailingIcon,
    this.obscureText = false,
    this.keyboardType,
    this.focusNode,
    this.onChanged,
    this.borderColor,
    this.focusedBorderColor,
  });

  final TextEditingController controller;
  final String hintText;
  final Widget leadingIcon;
  final Widget? trailingIcon;
  final bool obscureText;
  final TextInputType? keyboardType;

  final FocusNode? focusNode;
  final ValueChanged<String>? onChanged;
  final Color? borderColor;
  final Color? focusedBorderColor;

  @override
  Widget build(BuildContext context) {
    final effectiveBorderColor = borderColor ?? ColorConstants.border;
    final effectiveFocusedBorderColor =
        focusedBorderColor ?? ColorConstants.primary;

    return Row(
      children: [
        Padding(padding: const EdgeInsets.only(right: 8), child: leadingIcon),
        Expanded(
          child: TextFormField(
            controller: controller,
            focusNode: focusNode,
            onChanged: onChanged,
            obscureText: obscureText,
            keyboardType: keyboardType,
            style: AppTypography.body.copyWith(
              color: ColorConstants.textPrimary,
            ),
            decoration: InputDecoration(
              isDense: true,
              contentPadding: const EdgeInsets.symmetric(vertical: 8),
              suffixIcon: trailingIcon == null
                  ? null
                  : Padding(
                      padding: const EdgeInsets.only(right: 4, top: 8),
                      child: trailingIcon,
                    ),
              suffixIconConstraints: const BoxConstraints(
                minWidth: 32,
                minHeight: 32,
              ),
              hintText: hintText,
              hintStyle: AppTypography.body.copyWith(
                color: ColorConstants.textPrimary,
              ),
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: effectiveBorderColor),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: effectiveBorderColor),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: effectiveFocusedBorderColor,
                  width: 1.2,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
