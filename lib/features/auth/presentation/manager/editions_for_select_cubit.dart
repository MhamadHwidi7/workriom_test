import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:workiom_technical_test/core/params/no_params.dart';
import 'package:workiom_technical_test/core/states/api_state.dart';
import 'package:workiom_technical_test/features/auth/domain/entity/get_editions_for_select_entity.dart';
import 'package:workiom_technical_test/features/auth/domain/use_cases/get_editions_for_select_usecase.dart';

@injectable
class EditionsForSelectCubit
    extends Cubit<ApiState<GetEditionsForSelectEntity>> {
  EditionsForSelectCubit(this._useCase)
    : super(const ApiState<GetEditionsForSelectEntity>.initial());

  final GetEditionsForSelectUseCase _useCase;

  bool _hasRetried = false;

  Future<void> load() async {
    emit(const ApiState<GetEditionsForSelectEntity>.loading());

    final result = await _useCase(const NoParams());

    await result.fold(
      (failure) async {
        if (!_hasRetried) {
          _hasRetried = true;
          await load();
          return;
        }

        emit(
          ApiState<GetEditionsForSelectEntity>.failure(
            failure,
            reloadFunction: load,
          ),
        );
      },
      (data) {
        _hasRetried = false;
        emit(ApiState<GetEditionsForSelectEntity>.success(data));
      },
    );
  }
}
