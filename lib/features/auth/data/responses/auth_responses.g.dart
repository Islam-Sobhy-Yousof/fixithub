// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_responses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterResponses _$RegisterResponsesFromJson(Map<String, dynamic> json) =>
    RegisterResponses()
      ..succes = json['success'] as bool?
      ..message = json['message'] as String?
      ..error = json['error'] as String?
      ..details = json['details'] as String?;

Map<String, dynamic> _$RegisterResponsesToJson(RegisterResponses instance) =>
    <String, dynamic>{
      'success': instance.succes,
      'message': instance.message,
      'error': instance.error,
      'details': instance.details,
    };
