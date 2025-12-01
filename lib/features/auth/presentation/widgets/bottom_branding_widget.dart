import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:workiom_technical_test/core/constants/color_constants.dart';
import 'package:workiom_technical_test/core/constants/svg_constants.dart';
import 'package:workiom_technical_test/core/constants/text_constants.dart';
import 'package:workiom_technical_test/core/theme/app_typography.dart';

class BottomBranding extends StatelessWidget {
  final bool showLang;
  const BottomBranding({super.key, required this.showLang});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 63),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (showLang) ...[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(SvgConstants.language),
                const SizedBox(width: 6),
                Text(
                  TextConstants.languageEnglish,
                  style: AppTypography.bodyVerySmall.copyWith(
                    color: ColorConstants.textSecondary,
                  ),
                ),
                const SizedBox(width: 6),
                SvgPicture.asset(SvgConstants.dropdown),
              ],
            ),
            const SizedBox(height: 12),
          ],

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                TextConstants.bottomStayOrganizedWith,
                style: AppTypography.body.copyWith(
                  color: ColorConstants.textSecondary,
                ),
              ),
              SvgPicture.asset(SvgConstants.logoText),
            ],
          ),
        ],
      ),
    );
  }
}
