import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'create_workspace_form_state.dart';

@injectable
class CreateWorkspaceFormCubit extends Cubit<CreateWorkspaceFormState> {
  CreateWorkspaceFormCubit() : super(const CreateWorkspaceFormState()) {
    workspaceNameController.addListener(_onFieldsChanged);
    firstNameController.addListener(_onFieldsChanged);
    lastNameController.addListener(_onFieldsChanged);
  }

  final TextEditingController workspaceNameController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();

  final FocusNode workspaceNameFocusNode = FocusNode();
  final FocusNode firstNameFocusNode = FocusNode();
  final FocusNode lastNameFocusNode = FocusNode();

  void _onFieldsChanged() {
    emit(
      state.copyWith(
        workspaceName: workspaceNameController.text,
        firstName: firstNameController.text,
        lastName: lastNameController.text,
      ),
    );
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
