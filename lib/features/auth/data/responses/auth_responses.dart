


import 'package:fixithub/app/core/network/responses/base_response.dart';

import 'package:json_annotation/json_annotation.dart';

part 'auth_responses.g.dart';
@JsonSerializable()
class RegisterResponses extends BaseResponse {

RegisterResponses();
factory RegisterResponses.fromJson(Map<String,dynamic> json) => _$RegisterResponsesFromJson(json);


Map<String,dynamic> toJson() => _$RegisterResponsesToJson(this);
}