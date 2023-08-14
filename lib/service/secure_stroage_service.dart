import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageService {
  static const secureStorage = FlutterSecureStorage();

  static Future<void> writeAuthToken(
      {required String key, required String value}) async {
    return await secureStorage.write(
      key: key,
      value: value,
    );
  }

  static Future<String?> readAuthToken(String key) async {
    return await secureStorage.read(key: key);
  }
}
