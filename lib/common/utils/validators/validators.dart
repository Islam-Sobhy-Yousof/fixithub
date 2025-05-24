abstract class Validators {
static String? isValidEmail({required String? email}) {
    if (email == null || email.trim().isEmpty) {
      return "Email is required";
    }

    final regex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!regex.hasMatch(email.trim())) {
      return "Enter a valid email address";
    }

    return null;
  }


static String? validatePassword({required String? password}) {
  if (password == null || password.isEmpty) {
    return "Password is required";
  }

  if (password.length < 8) {
    return "Password must be at least 8 characters";
  }

  if (!RegExp(r'[A-Z]').hasMatch(password)) {
    return "Include at least one capital letter (A-Z)";
  }

  if (!RegExp(r'[a-z]').hasMatch(password)) {
    return "Include at least one lowercase letter (a-z)";
  }

  if (!RegExp(r'[0-9]').hasMatch(password)) {
    return "Include at least one number (0-9)";
  }

  if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(password)) {
    return "Include at least one special character";
  }

  return null;
}

}
