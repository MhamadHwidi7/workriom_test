part of 'create_workspace_form_cubit.dart';

class CreateWorkspaceFormState {
  const CreateWorkspaceFormState({
    this.workspaceName = '',
    this.firstName = '',
    this.lastName = '',
  });

  final String workspaceName;
  final String firstName;
  final String lastName;

  bool get isValid =>
      workspaceName.trim().isNotEmpty &&
      firstName.trim().isNotEmpty &&
      lastName.trim().isNotEmpty;

  CreateWorkspaceFormState copyWith({
    String? workspaceName,
    String? firstName,
    String? lastName,
  }) {
    return CreateWorkspaceFormState(
      workspaceName: workspaceName ?? this.workspaceName,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
    );
  }
}
