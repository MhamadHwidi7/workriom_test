import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:workiom_technical_test/core/constants/color_constants.dart';
import 'package:workiom_technical_test/core/constants/svg_constants.dart';
import 'package:workiom_technical_test/core/constants/text_constants.dart';
import 'package:workiom_technical_test/core/states/api_state.dart';
import 'package:workiom_technical_test/core/theme/app_typography.dart';
import 'package:workiom_technical_test/core/widgets/labeled_underline_field.dart';
import 'package:workiom_technical_test/features/auth/domain/entity/tenant_availability_entity.dart';
import 'package:workiom_technical_test/features/auth/presentation/manager/tenant_availability_cubit.dart';
import 'package:workiom_technical_test/features/auth/presentation/manager/ui_logic/create_workspace_form_cubit.dart';

class CreateWorkspaceFormSection extends StatelessWidget {
  const CreateWorkspaceFormSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateWorkspaceFormCubit, CreateWorkspaceFormState>(
      builder: (context, state) {
        final formCubit = context.read<CreateWorkspaceFormCubit>();

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              TextConstants.workspaceCompanyOrTeamNameLabel,
              style: AppTypography.body.copyWith(
                color: ColorConstants.textPrimary,
              ),
            ),
            const SizedBox(height: 8),
            BlocBuilder<
              TenantAvailabilityCubit,
              ApiState<TenantAvailabilityEntity>
            >(
              builder: (context, tenantState) {
                Color borderColor = ColorConstants.border;
                Color focusedBorderColor = ColorConstants.primary;
                final hasTenant = tenantState.maybeWhen(
                  success: (data) => data.hasTenant,
                  orElse: () => false,
                );

                if (hasTenant) {
                  borderColor = Colors.red;
                  focusedBorderColor = Colors.red;
                }

                return LabeledUnderlineField(
                  controller: formCubit.workspaceNameController,
                  focusNode: formCubit.workspaceNameFocusNode,
                  hintText: TextConstants.workspaceNameHint,
                  leadingIcon: SvgPicture.asset(SvgConstants.publick),
                  trailingIcon: Text(
                    TextConstants.workspaceDomainSuffix,
                    style: AppTypography.bodyVerySmall.copyWith(
                      color: hasTenant
                          ? Colors.red
                          : ColorConstants.textSecondary,
                    ),
                  ),
                  borderColor: borderColor,
                  focusedBorderColor: focusedBorderColor,
                  onChanged: (value) {
                    context
                        .read<TenantAvailabilityCubit>()
                        .onWorkspaceNameChanged(value);
                  },
                );
              },
            ),
            const SizedBox(height: 24),

            Text(
              TextConstants.workspaceFirstNameLabel,
              style: AppTypography.body.copyWith(
                color: ColorConstants.textPrimary,
              ),
            ),
            const SizedBox(height: 8),
            LabeledUnderlineField(
              controller: formCubit.firstNameController,
              focusNode: formCubit.firstNameFocusNode,
              hintText: TextConstants.workspaceFirstNameHint,
              leadingIcon: SvgPicture.asset(SvgConstants.names),
            ),
            const SizedBox(height: 24),
            Text(
              TextConstants.workspaceLastNameLabel,
              style: AppTypography.body.copyWith(
                color: ColorConstants.textPrimary,
              ),
            ),
            const SizedBox(height: 8),
            LabeledUnderlineField(
              controller: formCubit.lastNameController,
              focusNode: formCubit.lastNameFocusNode,
              hintText: TextConstants.workspaceLastNameHint,

              leadingIcon: SvgPicture.asset(SvgConstants.names),
            ),
          ],
        );
      },
    );
  }
}
