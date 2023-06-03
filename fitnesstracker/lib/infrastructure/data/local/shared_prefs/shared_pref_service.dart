import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../domain/auth/i_auth_repository.dart';
import '../../../../domain/auth/user.dart';
import '../../../../domain/data/local/SharedPrefs/i_shared_pref_service.dart';
import '../../../auth/user_dto.dart';

@LazySingleton(as: ISharedPrefsService)
@injectable
class SharedPrefsService implements ISharedPrefsService {
  @override
  Future<void> setAuthResponse(UserDto credentials) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("token", credentials.token);
    prefs.setString("refreshToken", credentials.refreshToken);
    prefs.setString("userId", credentials.id);
    prefs.setString("name", credentials.name);
    prefs.setStringList("role", credentials.role);
    prefs.setString("emailAddress", credentials.emailAddress);
    prefs.setInt("expireTime", credentials.expireTime);
  }

  @override
  Future<User> getAuthenticatedUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    User user = User(
        prefs.getString('userId') ?? "",
        prefs.getString('name') ?? "",
        prefs.getString('emailAddress') ?? "",
        prefs.getStringList('role') ?? []);
    return user;
  }

  @override
  Future<void> removeToken() async {
    return await SharedPreferences.getInstance()
        .then((value) => value.remove('token'));
  }

  @override
  Future<bool> isFirstRun() async {
    return SharedPreferences.getInstance().then((prefs) {
      return prefs.getBool('firstRun') ?? true;
    });
  }

  @override
  Future<void> setFirstRun(bool isFirstRun) async {
    return SharedPreferences.getInstance().then((prefs) {
      prefs.setBool('firstRun', isFirstRun);
    });
  }

  @override
  Future<String?> getToken() async {
    return SharedPreferences.getInstance().then((prefs) {
      var token = prefs.getString('token');
      return token;
    });
  }

  @override
  Future<String?> getRefreshToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString("refreshToken");
  }

  @override
  Future<void> removeAuthenticatedUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove("token");
    prefs.remove("refreshToken");
    prefs.remove("userId");
    prefs.remove("name");
    prefs.remove("role");
    prefs.remove("emailAddress");
    prefs.remove("expireTime");
  }

  @override
  Future<int?> getExpiry() {
    return SharedPreferences.getInstance().then((prefs) {
      var expireTime = prefs.getInt('expireTime');
      return expireTime;
    });
  }
}
