import 'package:equatable/equatable.dart';

class EditionsUiState extends Equatable {
  final int? selectedEditionId;

  const EditionsUiState({this.selectedEditionId});

  EditionsUiState copyWith({int? selectedEditionId}) {
    return EditionsUiState(
      selectedEditionId: selectedEditionId ?? this.selectedEditionId,
    );
  }

  @override
  List<Object?> get props => [selectedEditionId];
}
