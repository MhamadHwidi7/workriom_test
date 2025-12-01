import 'package:workiom_technical_test/core/params/base_params.dart';

class NoParams extends BaseParams {
  const NoParams();

  @override
  List<Object> get props => [];

  @override
  Map<String, dynamic> toJson() {
    return <String, dynamic>{};
  }
}
