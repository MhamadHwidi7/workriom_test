import 'package:equatable/equatable.dart';
import 'package:workiom_technical_test/core/enums/splash_status.dart';

class SplashState extends Equatable {
  final SplashStatus status;
  final String? message;

  const SplashState({this.status = SplashStatus.initial, this.message});

  SplashState copyWith({SplashStatus? status, String? message}) {
    return SplashState(
      status: status ?? this.status,
      message: message ?? this.message,
    );
  }

  @override
  List<Object?> get props => [status, message];
}
