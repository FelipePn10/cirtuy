class AuthServiceTest {
  // This class is a placeholder for the AuthService class
  // In a real application, this would be replaced with the actual AuthService implementation
  String? validateEmail(String? email) {
    if (email == null || email.isEmpty) {
      return 'Email is required';
    } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(email)) {
      return 'The email is invalid';
    }
    return null;
  }
  String? validatePassword(String? password) {
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