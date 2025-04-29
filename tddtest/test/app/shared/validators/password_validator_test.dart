import 'package:flutter_test/flutter_test.dart';
import 'package:namer_app/app/shared/validators/password_validator.dart';

void main() {
  late PasswordValidatorTest passwordValidatorTest;
  setUp(() {
    passwordValidatorTest = PasswordValidatorTest();
  });

  group('password validation', () {
    test('should return an error message if the password is null', () {
      final result = passwordValidatorTest.validatePassword();
      expect(result, equals('Password is required'));
    });

    test('should return an error if the password field is empty', () {
      final result = passwordValidatorTest.validatePassword(password: '');
      expect(result, equals('Password is required'));
    });

    test('should return an error message if the password is less than 6 characters', () {
      final result = passwordValidatorTest.validatePassword(password: '12345');
      expect(result, equals('Password must be at least 6 characters long'));
    });

    test('should return an error message if the password does not contain at least one letter and one number', () {
      final result = passwordValidatorTest.validatePassword(password: 'abcdef');
      expect(result, equals('Password must contain at least one letter and one number'));
    });

    test('should return null if the password is valid', () {
      final result = passwordValidatorTest.validatePassword(password: 'abc123');
      expect(result, isNull);
    });

    test('should return null if the password is valid with special characters', () {
      final result = passwordValidatorTest.validatePassword(password: 'abc123!@#\$%');
      expect(result, isNull);
    });

    test('should return null if the password is valid with spaces', () {
      final result = passwordValidatorTest.validatePassword(password: 'abc 123');
      expect(result, isNull);
    });

    test('should return null if the password is valid with special characters and spaces', () {
      final result = passwordValidatorTest.validatePassword(password: 'abc 123!@#\$%');
      expect(result, isNull);
    });

    },
  );
}