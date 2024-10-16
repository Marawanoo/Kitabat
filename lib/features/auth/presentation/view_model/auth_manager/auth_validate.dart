class AuthValidate {
  bool isValidEmail(String email) {
    String emailPattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';

    RegExp regExp = RegExp(emailPattern);
    return regExp.hasMatch(email);
  }

  String? validatePassword(String password) {
    if (password.length < 8) {
      return 'يجب أن تكون كلمة المرور 8 أحرف على الأقل';
    }
    if (!password.contains(RegExp(r'[A-Z]'))) {
      return 'يجب أن تحتوي كلمة المرور على حرف كبير واحد';
    }
    if (!password.contains(RegExp(r'[a-z]'))) {
      return 'يجب أن تحتوي كلمة المرور على حرف صغير واحد';
    }
    if (!password.contains(RegExp(r'[0-9]'))) {
      return 'يجب أن تحتوي كلمة المرور على رقم واحد';
    }
    if (!password.contains(RegExp(r'[!@#$&*~]'))) {
      return 'يجب أن تحتوي كلمة المرور على حرف خاص واحد';
    }
    return null;
  }
}
