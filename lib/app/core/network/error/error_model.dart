import 'package:fixithub/app/core/network/api/api_keys.dart';

class ErrorModel {
  final bool? success;
  final String? error;
  final String? details;

  ErrorModel({
    required this.success,
    required this.error,
    this.details,
  });

  factory ErrorModel.fromJson(Map<String, dynamic> json) {
    return ErrorModel(
      success: json[ApiKeys.success] as bool?,
      error: json[ApiKeys.error] as String?,
      details: json[ApiKeys.details] as String?,
    );
  }
}
