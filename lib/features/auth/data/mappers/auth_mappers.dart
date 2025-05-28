import 'package:fixithub/app/app_constants.dart';
import 'package:fixithub/app/extensions.dart';
import 'package:fixithub/features/auth/data/responses/auth_responses.dart';
import 'package:fixithub/features/auth/domain/models/registeration_model.dart';

extension RegisterationMapper on RegisterResponses? {
  RegisterationModel toDomain() {
    return RegisterationModel(
      message: this?.message.orEmpty() ?? AppConstants.empty,
    );
  }
}
