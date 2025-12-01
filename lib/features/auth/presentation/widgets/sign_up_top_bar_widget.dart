import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:workiom_technical_test/core/constants/color_constants.dart';
import 'package:workiom_technical_test/core/constants/svg_constants.dart';
import 'package:workiom_technical_test/core/constants/text_constants.dart';
import 'package:workiom_technical_test/core/theme/app_typography.dart';

class SignUpTopBarWidget extends StatelessWidget {
  final bool showTopText;
  const SignUpTopBarWidget({super.key, required this.showTopText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => Navigator.of(context).maybePop(),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(SvgConstants.backIcon),
          if (showTopText) ...[
            const SizedBox(width: 5),
            Text(
              TextConstants.signin,
              style: AppTypography.headerBodyReg.copyWith(
                color: ColorConstants.primary,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
