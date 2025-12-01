import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'create_workspace_form_state.dart';

@injectable
class CreateWorkspaceFormCubit extends Cubit<CreateWorkspaceFormState> {
  CreateWorkspaceFormCubit() : super(const CreateWorkspaceFormState()) {
    workspaceNameController.addListener(_onWorkspaceNameChanged);
    firstNameController.addListener(_onFirstNameChanged);
    lastNameController.addListener(_onLastNameChanged);
  }

  final TextEditingController workspaceNameController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();

  final FocusNode workspaceNameFocusNode = FocusNode();
  final FocusNode firstNameFocusNode = FocusNode();
  final FocusNode lastNameFocusNode = FocusNode();

  static final _tenantNameRegExp = RegExp(r'^[a-zA-Z][a-zA-Z0-9-]*$');
  static final _nameRegExp = RegExp(r'^[a-zA-Z]+$');

  void _onWorkspaceNameChanged() {
    final value = workspaceNameController.text.trim();
    final isValid = _validateTenantName(value);

    emit(
      state.copyWith(
        workspaceName: value,
        isWorkspaceNameValid: isValid,
        workspaceNameError: isValid || value.isEmpty
            ? null
            : 'Tenant name must start with a letter and can only contain letters, numbers, and dashes',
      ),
    );
  }

  void _onFirstNameChanged() {
    final value = firstNameController.text.trim();
    final isValid = _validateName(value);

    emit(
      state.copyWith(
        firstName: value,
        isFirstNameValid: isValid,
        firstNameError: isValid || value.isEmpty
            ? null
            : 'First name must contain only letters',
      ),
    );
  }

  void _onLastNameChanged() {
    final value = lastNameController.text.trim();
    final isValid = _validateName(value);

    emit(
      state.copyWith(
        lastName: value,
        isLastNameValid: isValid,
        lastNameError: isValid || value.isEmpty
            ? null
            : 'Last name must contain only letters',
      ),
    );
  }

  bool _validateTenantName(String value) {
    if (value.isEmpty) return false;
    return _tenantNameRegExp.hasMatch(value);
  }

  bool _validateName(String value) {
    if (value.isEmpty) return false;
    return _nameRegExp.hasMatch(value);
  }

  @override
  Future<void> close() {
    workspaceNameController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();

    workspaceNameFocusNode.dispose();
    firstNameFocusNode.dispose();
    lastNameFocusNode.dispose();

    return super.close();
  }
}
