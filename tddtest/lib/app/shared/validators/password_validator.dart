class PasswordValidatorTest {
  String? validatePassword({String? password}) {
    // ignore: unnecessary_null_comparison
    if (password == null || password.isEmpty) {
      return 'Password is required';
    } else if (password.length < 6) {
      return 'Password must be at least 6 characters long';
    } else if (!RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$').hasMatch(password)) {
      return 'Password must contain at least one letter and one number';
    }
    return null;
  }
}