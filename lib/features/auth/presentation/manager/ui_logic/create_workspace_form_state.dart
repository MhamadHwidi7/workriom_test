part of 'create_workspace_form_cubit.dart';

class CreateWorkspaceFormState {
  const CreateWorkspaceFormState({
    this.workspaceName = '',
    this.firstName = '',
    this.lastName = '',
    this.isWorkspaceNameValid = false,
    this.isFirstNameValid = false,
    this.isLastNameValid = false,
    this.workspaceNameError,
    this.firstNameError,
    this.lastNameError,
  });

  final String workspaceName;
  final String firstName;
  final String lastName;
  final bool isWorkspaceNameValid;
  final bool isFirstNameValid;
  final bool isLastNameValid;
  final String? workspaceNameError;
  final String? firstNameError;
  final String? lastNameError;

  bool get isValid =>
      isWorkspaceNameValid && isFirstNameValid && isLastNameValid;

  CreateWorkspaceFormState copyWith({
    String? workspaceName,
    String? firstName,
    String? lastName,
    bool? isWorkspaceNameValid,
    bool? isFirstNameValid,
    bool? isLastNameValid,
    String? workspaceNameError,
    String? firstNameError,
    String? lastNameError,
  }) {
    return CreateWorkspaceFormState(
      workspaceName: workspaceName ?? this.workspaceName,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      isWorkspaceNameValid: isWorkspaceNameValid ?? this.isWorkspaceNameValid,
      isFirstNameValid: isFirstNameValid ?? this.isFirstNameValid,
      isLastNameValid: isLastNameValid ?? this.isLastNameValid,
      workspaceNameError: workspaceNameError,
      firstNameError: firstNameError,
      lastNameError: lastNameError,
    );
  }
}
