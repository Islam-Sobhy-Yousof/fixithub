import 'package:fixithub/app/core/network/api/api_keys.dart';
import 'package:json_annotation/json_annotation.dart';

part 'auth_requests.g.dart';

@JsonSerializable()
class RegisterRequest {
  @JsonKey(name: ApiKeys.username)
  final String username;

  @JsonKey(name: ApiKeys.email)
  final String email;

  @JsonKey(name: ApiKeys.password)
  final String password;

  @JsonKey(name: ApiKeys.role)
  final String role;

  RegisterRequest({
    required this.username,
    required this.email,
    required this.password,
    required this.role,
  });

  factory RegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterRequestToJson(this);
}
