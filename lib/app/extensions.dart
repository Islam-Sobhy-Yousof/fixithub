
import 'package:fixithub/app/app_constants.dart';

extension NonNullString on String? {
  String orEmpty() {
    if (this == null) return AppConstants.empty;

    return this!;
  }
}

extension NonNullInteger on int? {
  int orZero() {
    if (this == null) return AppConstants.zero;

    return this!;
  }
}
