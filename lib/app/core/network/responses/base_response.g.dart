// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponse _$BaseResponseFromJson(Map<String, dynamic> json) => BaseResponse()
  ..succes = json['success'] as bool?
  ..message = json['message'] as String?
  ..error = json['error'] as String?
  ..details = json['details'] as String?;

Map<String, dynamic> _$BaseResponseToJson(BaseResponse instance) =>
    <String, dynamic>{
      'success': instance.succes,
      'message': instance.message,
      'error': instance.error,
      'details': instance.details,
    };
