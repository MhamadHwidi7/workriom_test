import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:workiom_technical_test/core/constants/color_constants.dart';
import 'package:workiom_technical_test/core/constants/svg_constants.dart';
import 'package:workiom_technical_test/core/constants/text_constants.dart';
import 'package:workiom_technical_test/core/theme/app_typography.dart';

class SignUpSuccessContentWidget extends StatelessWidget {
  const SignUpSuccessContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final style = AppTypography.title2.copyWith(
      color: ColorConstants.textPrimary,
    );

    return Center(
      child: SizedBox(
        width: 254,
        height: 56,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(TextConstants.thankYouForChoosing, style: style),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(TextConstants.workiomCapitalized, style: style),
                const SizedBox(width: 4),
                SvgPicture.asset(SvgConstants.logo, height: 22),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
