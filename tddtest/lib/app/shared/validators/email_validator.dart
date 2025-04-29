class EmailValidatorTest {
  String? validate({String? email}) {
    if (email == null || email.isEmpty) {
      return 'Email is required';
    } else if (!RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$').hasMatch(email)) {
      return 'Invalid email format';
    } else {
      return null;
    }
  }
}