import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService {
  static LocalStorageService _instance;
  static SharedPreferences _preferences;

  static Future<LocalStorageService> getInstance() async {
    if (_instance == null) {
      _instance = LocalStorageService();
    }

    if (_preferences == null) {
      _preferences = await SharedPreferences.getInstance();
    }

    return _instance;
  }

  static const String SessionIdKey = 'sessionId';
  static const String IsLoginKey = 'isLogin';
  static const String ProxyIpKey = 'proxyIp';
  static const String DisclaimerKey = 'disclaimer';
  static const String BindBankTipKey = 'bindBankTip';
  static const String PhoneKey = 'loginPhone';
  static const String ShowAgreementCountKey = 'showAgreementCount';
  static const String HasUploadContactKey = 'hasUploadContact';
  static const String GatewayUrlKey = 'gatewayUrlKey';

  String get sessionId {
    return _getFromPreferences(SessionIdKey) ?? "";
  }

  set sessionId(String sessionId) {
    _saveToPreferences(SessionIdKey, sessionId);
  }

  bool get isLogin {
    return _getFromPreferences(IsLoginKey) ?? false;
  }

  set isLogin(bool isLogin) {
    _saveToPreferences(IsLoginKey, isLogin);
  }


  String get loginPhone {
    return _getFromPreferences(PhoneKey) ?? "";
  }

  set loginPhone(String phone) {
    _saveToPreferences(PhoneKey, phone);
  }

  String get proxyIp {
    return _getFromPreferences(ProxyIpKey) ?? "";
  }

  set proxyIp(String proxyIp) {
    _saveToPreferences(ProxyIpKey, proxyIp);
  }

  String get gatewayUrl {
    return _getFromPreferences(GatewayUrlKey) ?? "";
  }

  set gatewayUrl(String gatewayUrl) {
    _saveToPreferences(GatewayUrlKey, gatewayUrl);
  }

  bool get hasShowDisclaimer {
    return _getFromPreferences(DisclaimerKey) ?? false;
  }

  set hasShowDisclaimer(bool hasShowDisclaimer) {
    _saveToPreferences(DisclaimerKey, hasShowDisclaimer);
  }

  bool get hasUploadContact {
    return _getFromPreferences(HasUploadContactKey) ?? false;
  }

  set hasUploadContact(bool hasUploadContact) {
    _saveToPreferences(HasUploadContactKey, hasUploadContact);
  }

  bool get hasShowBindBankTip {
    return _getFromPreferences(BindBankTipKey) ?? false;
  }

  set hasShowBindBankTip(bool hasShowBindBankTip) {
    _saveToPreferences(BindBankTipKey, hasShowBindBankTip);
  }

  bool get hasShowAgreementCount {
    return _getFromPreferences(ShowAgreementCountKey) ?? false;
  }

  set hasShowAgreementCount(bool hasShowAgreementCount) {
    _saveToPreferences(ShowAgreementCountKey, hasShowAgreementCount);
  }


  dynamic _getFromPreferences(String key) {
    var value = _preferences.get(key);
    return value;
  }

  Future<bool> _deleteFromPreferences(String key) {
    return _preferences.remove(key);
  }

  Future<bool> _saveToPreferences<T>(String key, T content) {
    if (content is String) {
      return _preferences.setString(key, content);
    }
    if (content is bool) {
      return _preferences.setBool(key, content);
    }
    if (content is int) {
      return _preferences.setInt(key, content);
    }
    if (content is double) {
      return _preferences.setDouble(key, content);
    }
    if (content is List<String>) {
      return _preferences.setStringList(key, content);
    }
    return Future.value(false);
  }
}
