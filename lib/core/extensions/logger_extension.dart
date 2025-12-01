import 'package:logger/logger.dart';
import 'package:workiom_technical_test/core/di/injection.dart';

extension LoggerExtension on Object? {
  void printWrapped(String text, void Function(dynamic) callback) {
    final pattern = RegExp('.{1,8000}');
    pattern.allMatches(text).forEach((match) => callback(match.group(0)));
  }

  void get logE => printWrapped(toString(), getIt<Logger>().e);

  void get logW => printWrapped(toString(), getIt<Logger>().w);

  void get logI => printWrapped(toString(), getIt<Logger>().i);

  void get logD => printWrapped(toString(), getIt<Logger>().d);
}
