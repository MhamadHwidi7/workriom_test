import 'package:flutter/material.dart';
import 'package:workiom_technical_test/core/constants/color_constants.dart';
import 'package:workiom_technical_test/core/constants/text_constants.dart';
import 'package:workiom_technical_test/core/theme/app_typography.dart';

class TermsText extends StatelessWidget {
  const TermsText({super.key});

  @override
  Widget build(BuildContext context) {
    final base = AppTypography.footnote.copyWith(
      color: ColorConstants.textSecondary,
    );

    return Column(
      children: [
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: base,
            children: [
              const TextSpan(text: TextConstants.signUpTermsPrefix),
              TextSpan(
                text: TextConstants.signUpTermsOfService,
                style: base.copyWith(
                  decoration: TextDecoration.underline,
                  color: ColorConstants.textPrimary,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 2),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: base,
            children: [
              const TextSpan(text: TextConstants.signUpAnd),
              TextSpan(
                text: TextConstants.signUpPrivacyPolicy,
                style: base.copyWith(
                  decoration: TextDecoration.underline,
                  color: ColorConstants.textPrimary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
