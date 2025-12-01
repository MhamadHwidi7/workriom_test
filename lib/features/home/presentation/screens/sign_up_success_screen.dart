import 'package:flutter/material.dart';
import 'package:workiom_technical_test/features/auth/presentation/widgets/bottom_branding_widget.dart';
import 'package:workiom_technical_test/features/auth/presentation/widgets/sign_up_success_content_widget.dart';

class SignUpSuccessScreen extends StatelessWidget {
  const SignUpSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Spacer(),
            SignUpSuccessContentWidget(),
            Spacer(),
            BottomBranding(showLang: false),
          ],
        ),
      ),
    );
  }
}
