import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:workiom_technical_test/core/constants/color_constants.dart';
import 'package:workiom_technical_test/core/constants/router_constants.dart';
import 'package:workiom_technical_test/core/constants/svg_constants.dart';
import 'package:workiom_technical_test/core/constants/text_constants.dart';
import 'package:workiom_technical_test/core/enums/splash_status.dart';
import 'package:workiom_technical_test/core/widgets/api_error_retry_widget.dart';
import 'package:workiom_technical_test/features/splash/presentation/manager/splash_cubit.dart';
import 'package:workiom_technical_test/features/splash/presentation/manager/splash_state.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SplashCubit, SplashState>(
      listener: (context, state) {
        switch (state.status) {
          case SplashStatus.authenticated:
            context.goNamed(RouterNames.signUpSuccess);
            break;

          case SplashStatus.unauthenticated:
            context.goNamed(RouterNames.signUpOption);
            break;

          case SplashStatus.error:
            break;

          case SplashStatus.initial:
          case SplashStatus.loading:
            break;
        }
      },
      builder: (context, state) {
        if (state.status == SplashStatus.error) {
          return ApiErrorRetryWidget(
            message: state.message ?? TextConstants.errorMessageGeneric,
            onRetry: () {
              context.read<SplashCubit>().checkSession();
            },
          );
        }
        return Scaffold(
          backgroundColor: ColorConstants.splashBackground,
          body: Center(child: SvgPicture.asset(SvgConstants.logo, height: 160)),
        );
      },
    );
  }
}
