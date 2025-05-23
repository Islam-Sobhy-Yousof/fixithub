abstract class Validators {
  static bool isValidEmail(String email) {
    final regex = RegExp(
      r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
    );
    return regex.hasMatch(email.trim());
  }

  static bool isPasswordValid({required String password}) {
    if (password.isEmpty) {
      return false;
    }
    // Regular expression pattern for password validation
    final regExp = RegExp(
      r'^'
      r'(?=.*[A-Z])' // At least one uppercase letter
      r'(?=.*[a-z])' // At least one lowercase letter
      r'(?=.*\d)' // At least one number
      r'(?=.*[\W_])' // At least one special character (symbol)
      r'.{8,}' // Minimum length of 8 characters
      r'$',
    );

    return regExp.hasMatch(password);
  }
}
