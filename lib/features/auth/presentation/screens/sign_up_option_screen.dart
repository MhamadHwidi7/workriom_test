import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:workiom_technical_test/core/constants/color_constants.dart';
import 'package:workiom_technical_test/core/constants/router_constants.dart';
import 'package:workiom_technical_test/core/constants/text_constants.dart';
import 'package:workiom_technical_test/core/widgets/app_button.dart';
import 'package:workiom_technical_test/features/auth/presentation/widgets/bottom_branding_widget.dart';
import 'package:workiom_technical_test/features/auth/presentation/widgets/or_separator.dart';
import 'package:workiom_technical_test/features/auth/presentation/widgets/sign_up_header_widget.dart';
import 'package:workiom_technical_test/features/auth/presentation/widgets/sign_up_top_bar_widget.dart';
import 'package:workiom_technical_test/features/auth/presentation/widgets/terms_texts.dart';

class SignUpOptionScreen extends StatelessWidget {
  const SignUpOptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorConstants.background,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SignUpTopBarWidget(showTopText: true),
              SizedBox(height: 24),
              SignUpHeaderWidget(
                title: TextConstants.signUpTitle,
                subtitle: TextConstants.signUpSubtitle,
              ),
              SizedBox(height: 32),
              Spacer(),
              _SignUpOptionsSection(),
              Spacer(),
              BottomBranding(showLang: true),
            ],
          ),
        ),
      ),
    );
  }
}

class _SignUpOptionsSection extends StatelessWidget {
  const _SignUpOptionsSection();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 343),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppButton.google(
              onPressed: () {
                // not clicked for now in the test
              },
            ),
            const SizedBox(height: 30),
            const OrSeparator(),
            const SizedBox(height: 30),
            AppButton.primary(
              label: TextConstants.signUpContinueWithEmail,
              onPressed: () {
                context.push(RouterPaths.signUpPassword);
              },
            ),
            const SizedBox(height: 24),
            const TermsText(),
          ],
        ),
      ),
    );
  }
}
