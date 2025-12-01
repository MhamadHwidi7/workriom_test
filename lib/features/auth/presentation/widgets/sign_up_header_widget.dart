import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:workiom_technical_test/core/constants/color_constants.dart';
import 'package:workiom_technical_test/core/constants/svg_constants.dart';
import 'package:workiom_technical_test/core/theme/app_typography.dart';

class SignUpHeaderWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  const SignUpHeaderWidget({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTypography.title2.copyWith(
            color: ColorConstants.textPrimary,
          ),
        ),
        const SizedBox(height: 4),
        Row(
          children: [
            Text(
              subtitle,
              style: AppTypography.headline3.copyWith(
                color: ColorConstants.textSecondary,
              ),
            ),
            SvgPicture.asset(SvgConstants.wavingHand),
          ],
        ),
      ],
    );
  }
}
