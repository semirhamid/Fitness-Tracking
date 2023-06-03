part of 'user_data_bloc.dart';

abstract class UserDataState extends Equatable {}

class UserDataInitial extends UserDataState {
  @override
  List<Object?> get props => [];
}

class UserDataLoading extends UserDataState {
  @override
  List<Object?> get props => [];
}

class UserDataLoaded extends UserDataState {
  final List<UserData> userData;
  UserDataLoaded(this.userData);

  @override
  List<Object?> get props => [userData];
}

class UserDataLoadingFailed extends UserDataState {
  @override
  List<Object?> get props => [];
}
