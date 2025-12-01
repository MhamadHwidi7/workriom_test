import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:workiom_technical_test/features/auth/domain/entity/get_editions_for_select_entity.dart';
import 'package:workiom_technical_test/features/auth/presentation/manager/ui_logic/editions_ui_state.dart';

@injectable
class EditionsUiCubit extends Cubit<EditionsUiState> {
  EditionsUiCubit() : super(const EditionsUiState());

  void setFromEditions(GetEditionsForSelectEntity data) {
    final editions = data.editionsWithFeatures;

    if (editions.isEmpty) {
      emit(const EditionsUiState());
      return;
    }

    final registrable = editions.where((e) => e.edition.isRegistrable).toList();
    final firstEdition = registrable.isNotEmpty
        ? registrable.first
        : editions.first;

    emit(EditionsUiState(selectedEditionId: firstEdition.edition.id));
  }

  void clear() {
    emit(const EditionsUiState());
  }
}
