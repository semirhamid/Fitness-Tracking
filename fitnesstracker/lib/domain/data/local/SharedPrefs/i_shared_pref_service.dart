import 'package:injectable/injectable.dart';

import '../../../../domain/auth/user.dart';
import '../../../../infrastructure/auth/user_dto.dart';

abstract class ISharedPrefsService {
  Future<void> setAuthResponse(UserDto credentials);
  Future<User> getAuthenticatedUser();
  Future<void> removeToken();
  Future<bool> isFirstRun();
  Future<void> setFirstRun(bool isFirstRun);
  Future<String?> getToken();
  Future<int?> getExpiry();
  Future<String?> getRefreshToken();
  Future<void> removeAuthenticatedUser();
}
