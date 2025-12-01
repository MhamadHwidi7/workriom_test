class CreateWorkspaceArgs {
  final String email;
  final String password;
  final int editionId;

  const CreateWorkspaceArgs({
    required this.email,
    required this.password,
    required this.editionId,
  });

  @override
  String toString() {
    return '''
CreateWorkspaceArgs(
  email: $email,
  password: $password,
  editionId: $editionId
)''';
  }
}
