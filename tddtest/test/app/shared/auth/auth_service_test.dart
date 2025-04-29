import 'package:flutter_test/flutter_test.dart';
import 'package:namer_app/app/shared/auth/auth_service.dart';

void main() {
  // ignore: unused_local_variable
  late AuthServiceTest authServiceTest;
  setUp(() {
    authServiceTest = AuthServiceTest();
  });

  // Test cases for the AuthService class
  group('AuthService', () {
        test('should return null if the email is null', () {
          final result = AuthServiceTest().validateEmail(null);
          expect(result, equals('Email is required'));
        });

        test('should return an error if the email field is empty', () {
          final result = AuthServiceTest().validateEmail('');
          expect(result, equals('Email is required'));
        });

        test('should return an error message if the email is invalid', () {
          final result = AuthServiceTest().validateEmail('fteam');
          expect(result, equals('The email is invalid'));
        });
      },
    );
  }