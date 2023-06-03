import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fitnesstracker/domain/user/user_data/user_data.dart';
import 'package:fitnesstracker/domain/user/user_data/i_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/user/user_data/single_user_data.dart';

part 'user_data_event.dart';
part 'user_data_state.dart';

@injectable
class UserDataBloc extends Bloc<UserDataEvent, UserDataState> {
  final IUserDataRepository repository;
  UserDataBloc(this.repository) : super(UserDataInitial()) {
    on<GetUserData>((event, emit) async {
      emit(UserDataLoading());
      try {
        final userData = await repository.getUserData(event.planId);
        print('user data bloc: $userData');
        emit(UserDataLoaded(userData));
      } catch (e) {
        print('Error in user data bloc: ${e.toString()}');
        emit(UserDataLoadingFailed());
      }
    });

    on<AddUserData>((event, emit) async {
      try {
        await repository.addUserData(event.userData);
        // final userData = await repository.getUserData(event.userData.planTypeId);
        // emit(UserDataLoaded(userData));
      } catch (e) {
        // emit(UserDataLoadingFailed());
      }
    });

    on<SubscribeUserPlan>((event, emit) async {
      try {
        await repository.subscribeUserPlan(event.planId);
      } catch (e) {
        // emit(UserDataLoadingFailed());
      }
    });
  }
}
