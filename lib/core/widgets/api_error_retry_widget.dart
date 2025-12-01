import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:workiom_technical_test/core/constants/color_constants.dart';
import 'package:workiom_technical_test/core/constants/svg_constants.dart';
import 'package:workiom_technical_test/core/constants/text_constants.dart';
import 'package:workiom_technical_test/core/theme/app_typography.dart';

class ApiErrorRetryWidget extends StatelessWidget {
  const ApiErrorRetryWidget({
    super.key,
    required this.message,
    required this.onRetry,
    this.onDismiss,
  });

  final String message;
  final VoidCallback onRetry;
  final VoidCallback? onDismiss;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.background,
      body: Stack(
        children: [
          const Positioned.fill(
            child: ColoredBox(color: ColorConstants.overlayDark20),
          ),
          Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 340),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 16,
                ),

                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      SvgConstants.errorForm,
                      height: 32,
                      width: 32,
                    ),
                    const SizedBox(height: 12),

                    Text(
                      TextConstants.errorTitleGeneric,
                      textAlign: TextAlign.center,
                      style: AppTypography.title2.copyWith(
                        color: ColorConstants.textPrimary,
                      ),
                    ),
                    const SizedBox(height: 8),

                    Text(
                      message,
                      textAlign: TextAlign.center,
                      style: AppTypography.bodySmall.copyWith(
                        color: ColorConstants.textSecondary,
                      ),
                    ),
                    const SizedBox(height: 16),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (onDismiss != null) ...[
                          TextButton(
                            onPressed: onDismiss,
                            child: Text(
                              TextConstants.actionCancel,
                              style: AppTypography.bodySmall.copyWith(
                                color: ColorConstants.textSecondary,
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                        ],
                        SizedBox(
                          height: 40,
                          child: FilledButton(
                            onPressed: onRetry,
                            style: FilledButton.styleFrom(
                              backgroundColor: ColorConstants.primary,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 24,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(999),
                              ),
                            ),
                            child: Text(
                              TextConstants.actionRetry,
                              style: AppTypography.bodySmall.copyWith(
                                color: ColorConstants.background,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
