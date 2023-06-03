import 'package:fitnesstracker/domain/user/user_data/user_data.dart';
import 'package:fitnesstracker/domain/user/user_data/single_user_data.dart';

abstract class IUserDataRepository {
  Future<List<UserData>> getUserData(int planId);
  Future<void> addUserData(SingleUserData userData);
  Future<void> subscribeUserPlan(int planId);
}
