part of 'user_data_bloc.dart';

abstract class UserDataEvent extends Equatable {}

class AddUserData extends UserDataEvent{
  final SingleUserData userData;
  AddUserData(this.userData);
  
  @override
  List<Object?> get props => [userData];
}

class GetUserData extends UserDataEvent{
  final int planId;
  GetUserData(this.planId);
  
  @override
  List<Object?> get props => [];
}
class SubscribeUserPlan extends UserDataEvent{
  final int planId;
  SubscribeUserPlan(this.planId);
  
  @override
  List<Object?> get props => [];
}
