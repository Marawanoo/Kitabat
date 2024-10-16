import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepository {
  Future<void> registerUser(
      String firstName, String lastName, String email, String password);

  Future<void> loginWithEmail(String email, String password);

  Future<UserCredential> loginWithGoogle();

  Future<UserCredential> loginWithFacebook();
}
