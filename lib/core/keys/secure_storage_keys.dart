import 'package:flutter/foundation.dart';

@immutable
class SecureStorageKeys {
  static const String keyToken = 'auth_token';
  static const String keyRefreshToken = 'refresh_token';

  static const List<String> removeKeysOnLogout = <String>[
    keyToken,
    keyRefreshToken,
  ];
}
