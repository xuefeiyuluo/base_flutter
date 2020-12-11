import 'package:base_flutter/module/locator/locator.dart';
import 'package:base_flutter/module/storage/local_storage_service.dart';

class UserInfo {
  static var _storageService = locator<LocalStorageService>();

  static bool isLogin() {
    String sessionId = _storageService.sessionId;
    if (sessionId != null && sessionId.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

  static int  verified = 0;

  static String loginPhone() {
    String phone = _storageService.loginPhone;
    return phone;
  }
}
