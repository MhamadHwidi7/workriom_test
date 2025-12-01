import 'package:flutter/material.dart';
import 'package:workiom_technical_test/core/constants/color_constants.dart';
import 'package:workiom_technical_test/core/constants/text_constants.dart';
import 'package:workiom_technical_test/core/theme/app_typography.dart';

class OrSeparator extends StatelessWidget {
  const OrSeparator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Text(
          TextConstants.signUpOr,
          style: AppTypography.footnote.copyWith(
            color: ColorConstants.textTertiary,
          ),
        ),
      ),
    );
  }
}
