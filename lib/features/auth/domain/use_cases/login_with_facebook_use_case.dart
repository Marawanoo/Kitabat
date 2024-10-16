import 'package:firebase_auth/firebase_auth.dart';

import '../repositories/auth_repository.dart';

class LoginWithFacebookUseCase {
  final AuthRepository authRepository;

  LoginWithFacebookUseCase(this.authRepository);

  Future<UserCredential> call() async {
    return await authRepository.loginWithFacebook();
  }
}
