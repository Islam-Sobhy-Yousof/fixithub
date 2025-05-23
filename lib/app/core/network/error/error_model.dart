import 'package:fixithub/app/core/network/api/api_keys.dart';

class ErrorModel {
  final bool? success;
  final String? error;
  final String? details;

  ErrorModel({
    required this.success,
    required this.error,
    required this.details,
  });

  factory ErrorModel.fromJson(Map<String, dynamic> json) {
    return ErrorModel(
      success: json[ApiKeys.success],
      error: json[ApiKeys.error],
      details: json[ApiKeys.details],
    );
  }
}
