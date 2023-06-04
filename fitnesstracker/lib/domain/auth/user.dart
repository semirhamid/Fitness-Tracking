import 'package:freezed_annotation/freezed_annotation.dart';

import '../../infrastructure/auth/user_dto.dart';

part 'user.freezed.dart';
part 'user.g.dart';
@freezed
abstract class User with _$User {
  const factory User(
    String id,
    String name,
    String email,
    List<String> role,

  ) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  factory User.toDomain(User user) => User(
        user.id,
        user.name,
        user.email,
        user.role,
      );
  
}
