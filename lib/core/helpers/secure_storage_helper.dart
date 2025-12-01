import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:workiom_technical_test/core/keys/secure_storage_keys.dart';

@singleton
class SecureStorageHelper {
  static const FlutterSecureStorage _storage = FlutterSecureStorage();

  static Future<void> deleteToken() async {
    await _storage.delete(key: SecureStorageKeys.keyToken);
  }

  static Future<void> persistToken(String token) async {
    await _storage.write(key: SecureStorageKeys.keyToken, value: token);
  }

  static Future<String?> get authToken async {
    return _storage.read(key: SecureStorageKeys.keyToken);
  }

  static Future<bool> get hasToken async {
    final token = await _storage.read(key: SecureStorageKeys.keyToken);
    return token != null && token.isNotEmpty;
  }

  // 🔹 new: refresh token
  static Future<void> persistRefreshToken(String token) async {
    await _storage.write(key: SecureStorageKeys.keyRefreshToken, value: token);
  }

  static Future<String?> get refreshToken async {
    return _storage.read(key: SecureStorageKeys.keyRefreshToken);
  }

  static Future<void> deleteAllSecureKeys() async {
    for (final key in SecureStorageKeys.removeKeysOnLogout) {
      await _storage.delete(key: key);
    }
  }
}
