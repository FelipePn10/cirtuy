import 'package:flutter_test/flutter_test.dart';
import 'package:namer_app/app/shared/validators/email_validator.dart';

void main() {

late EmailValidatorTest emailValidatorTest;
setUp(() {
    emailValidatorTest = EmailValidatorTest();
  });

  group('email validation', () {
    test('should return an error message if the email is null', () {
        final result = emailValidatorTest.validate();
        expect(result, equals('Email is required'));
      },
     );

      test('should return an error if the email field is empty', () {
        final result = emailValidatorTest.validate(email: '');
        expect(result, equals('Email is required'));
      },
     );

      test('should return an error message if the email is invalid', () {
        final result = emailValidatorTest.validate(email: 'fteam');
        expect(result, equals('The email is invalid'));
      },
     );

        test('should return null if the email is valid', () {
        final result = emailValidatorTest.validate(email: 'fteam@gmail.com');
        expect(result, isNull);
      },
     );
    },
  );
}