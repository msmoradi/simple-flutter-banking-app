import 'package:domain/entities/authentication_status.dart';

abstract class AuthenticationRepository {
  Stream<AuthenticationStatus> get status;

  Future<void> logIn({
    required String username,
    required String password,
  });

  Future<void> signUp({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
  });

  void logOut();

  void dispose();
}
