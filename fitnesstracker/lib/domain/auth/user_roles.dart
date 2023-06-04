import 'package:json_annotation/json_annotation.dart';

enum Role {
  @JsonValue("ADMIN")
  admin,
  @JsonValue("USER")
  user
}
