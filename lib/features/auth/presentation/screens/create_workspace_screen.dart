import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:workiom_technical_test/core/constants/color_constants.dart';
import 'package:workiom_technical_test/core/constants/router_constants.dart';
import 'package:workiom_technical_test/core/constants/text_constants.dart';
import 'package:workiom_technical_test/core/errors/app_exceptions.dart';
import 'package:workiom_technical_test/core/navigation/args/create_workspace_args.dart';
import 'package:workiom_technical_test/core/states/api_state.dart';
import 'package:workiom_technical_test/core/widgets/app_button.dart';
import 'package:workiom_technical_test/core/widgets/create_workspace_form_section.dart';
import 'package:workiom_technical_test/features/auth/domain/bodies/register_tenant_body.dart';
import 'package:workiom_technical_test/features/auth/domain/entity/authenticate_result_entity.dart';
import 'package:workiom_technical_test/features/auth/domain/entity/register_tenant_result_entity.dart';
import 'package:workiom_technical_test/features/auth/domain/entity/tenant_availability_entity.dart';
import 'package:workiom_technical_test/features/auth/presentation/manager/authenticate_cubit.dart';
import 'package:workiom_technical_test/features/auth/presentation/manager/register_tenant_cubit.dart';
import 'package:workiom_technical_test/features/auth/presentation/manager/tenant_availability_cubit.dart';
import 'package:workiom_technical_test/features/auth/presentation/manager/ui_logic/create_workspace_form_cubit.dart';
import 'package:workiom_technical_test/features/auth/presentation/widgets/bottom_branding_widget.dart';
import 'package:workiom_technical_test/features/auth/presentation/widgets/sign_up_header_widget.dart';
import 'package:workiom_technical_test/features/auth/presentation/widgets/sign_up_top_bar_widget.dart';

class CreateWorkspaceScreen extends StatelessWidget {
  const CreateWorkspaceScreen({super.key, required this.args});

  final CreateWorkspaceArgs args;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: MultiBlocListener(
          listeners: [
            BlocListener<
              RegisterTenantCubit,
              ApiState<RegisterTenantResultEntity>
            >(
              listener: (context, state) {
                state.whenOrNull(
                  failure: (failure, _) {
                    final message = AppExceptions.getErrorMessage(failure);
                    Fluttertoast.showToast(
                      msg: message,
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                    );
                  },
                  success: (registerResult) {
                    final formCubit = context.read<CreateWorkspaceFormCubit>();

                    final workspaceName = formCubit.workspaceNameController.text
                        .trim();

                    context.read<AuthenticateCubit>().authenticateForTenant(
                      email: args.email,
                      password: args.password,
                      tenantName: workspaceName,
                    );
                  },
                );
              },
            ),

            BlocListener<AuthenticateCubit, ApiState<AuthenticateResultEntity>>(
              listener: (context, state) {
                state.whenOrNull(
                  success: (authResult) {
                    context.goNamed(RouterNames.signUpSuccess);
                  },
                  failure: (failure, _) {
                    final isNoInternet = failure.maybeWhen(
                      noInternetConnection: () => true,
                      orElse: () => false,
                    );
                    if (isNoInternet) {
                      context.goNamed(RouterNames.signUpSuccess);
                      return;
                    }
                    final message = AppExceptions.getErrorMessage(failure);
                    Fluttertoast.showToast(
                      msg: message,
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                    );
                  },
                );
              },
            ),
          ],
          child: BlocBuilder<AuthenticateCubit, ApiState<AuthenticateResultEntity>>(
            builder: (context, authState) {
              final isAuthLoading = authState.maybeWhen(
                loading: () => true,
                orElse: () => false,
              );

              return Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SignUpTopBarWidget(showTopText: false),
                        const SizedBox(height: 24),
                        const SignUpHeaderWidget(
                          title: TextConstants.createWorkspaceTitle,
                          subtitle: TextConstants.createWorkspaceSubtitle,
                        ),
                        const SizedBox(height: 32),

                        const Spacer(),

                        const Padding(
                          padding: EdgeInsets.all(16),
                          child: CreateWorkspaceFormSection(),
                        ),
                        const SizedBox(height: 32),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child:
                              BlocBuilder<
                                CreateWorkspaceFormCubit,
                                CreateWorkspaceFormState
                              >(
                                builder: (context, formState) {
                                  return BlocBuilder<
                                    TenantAvailabilityCubit,
                                    ApiState<TenantAvailabilityEntity>
                                  >(
                                    builder: (context, tenantState) {
                                      final isTenantAvailable = tenantState
                                          .maybeWhen(
                                            success: (data) => !data.hasTenant,
                                            orElse: () => false,
                                          );

                                      return BlocBuilder<
                                        RegisterTenantCubit,
                                        ApiState<RegisterTenantResultEntity>
                                      >(
                                        builder: (context, registerState) {
                                          final isRegisterLoading =
                                              registerState.maybeWhen(
                                                loading: () => true,
                                                orElse: () => false,
                                              );

                                          final canSubmit =
                                              formState.isValid &&
                                              isTenantAvailable &&
                                              !isRegisterLoading &&
                                              !isAuthLoading;

                                          return AppButton.login(
                                            label:
                                                isRegisterLoading ||
                                                    isAuthLoading
                                                ? TextConstants
                                                      .createWorkspaceButtonCreating
                                                : TextConstants
                                                      .createWorkspaceButtonLabel,
                                            isValid: canSubmit,
                                            onPressed: canSubmit
                                                ? () {
                                                    final formCubit = context
                                                        .read<
                                                          CreateWorkspaceFormCubit
                                                        >();

                                                    final workspaceName = formCubit
                                                        .workspaceNameController
                                                        .text
                                                        .trim();
                                                    final firstName = formCubit
                                                        .firstNameController
                                                        .text
                                                        .trim();
                                                    final lastName = formCubit
                                                        .lastNameController
                                                        .text
                                                        .trim();

                                                    final body =
                                                        RegisterTenantBody(
                                                          adminEmailAddress:
                                                              args.email,
                                                          adminFirstName:
                                                              firstName,
                                                          adminLastName:
                                                              lastName,
                                                          adminPassword:
                                                              args.password,
                                                          editionId: args
                                                              .editionId
                                                              .toString(),
                                                          name: workspaceName,
                                                          tenancyName:
                                                              workspaceName,
                                                        );

                                                    context
                                                        .read<
                                                          RegisterTenantCubit
                                                        >()
                                                        .registerTenant(
                                                          body: body,
                                                        );
                                                  }
                                                : null,
                                          );
                                        },
                                      );
                                    },
                                  );
                                },
                              ),
                        ),

                        const Spacer(),

                        const BottomBranding(showLang: false),
                      ],
                    ),
                  ),
                  if (isAuthLoading)
                    Container(
                      color: ColorConstants.overlayDark20,
                      child: const Center(child: CircularProgressIndicator()),
                    ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
