import 'package:fixithub/app/core/network/api/api_keys.dart';
import 'package:json_annotation/json_annotation.dart';

part 'base_response.g.dart';

@JsonSerializable()
class BaseResponse {
  @JsonKey(name: ApiKeys.success)
  bool? succes;

  @JsonKey(name: ApiKeys.message)
  String? message;


    @JsonKey(name: ApiKeys.error)
  String? error;

  @JsonKey(name: ApiKeys.details)
  String? details;
}
