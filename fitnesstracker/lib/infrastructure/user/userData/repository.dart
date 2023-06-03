import 'dart:convert';

import 'package:fitnesstracker/domain/user/user_data/user_data.dart';
import 'package:fitnesstracker/domain/user/user_data/i_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../common/api_urls.dart';
import '../../../domain/data/local/SharedPrefs/i_shared_pref_service.dart';
import '../../../domain/http/i_http_client.dart';
import '../../../domain/user/user_data/single_user_data.dart';
import 'sample_data.dart';

@LazySingleton(as: IUserDataRepository)
@injectable
class UserDataRepository implements IUserDataRepository {
  final IHttpClient _httpClient;

  UserDataRepository(this._httpClient);
  @override
  Future<List<UserData>> getUserData(int planId) async {
    var response = await _httpClient.get(ApiUrls.getUserWorkoutData);
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      print('User data repo: $data');
      final List<UserData> userData = [];
      for (var udata in data) {
        userData.add(UserData.fromJson(udata));
      }
      return userData;
    } else {
      print('Error in user data repo');
      throw Exception("Error");
    }
  }

  @override
  Future<void> addUserData(SingleUserData userData) async {
    print("user data repo add");
    var response = await _httpClient.post(ApiUrls.addUserWorkoutData,
        body: json.encode(userData.toJson()),
        headers: {'Content-Type': 'application/json'});
  }

  @override
  Future<void> subscribeUserPlan(int planId) async {
    var response =
        await _httpClient.post(ApiUrls.subscribeToPlan + planId.toString());
  }
}
