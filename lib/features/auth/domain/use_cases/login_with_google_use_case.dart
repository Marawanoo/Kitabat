import 'package:firebase_auth/firebase_auth.dart';
import 'package:kitabat_app/features/auth/domain/repositories/auth_repository.dart';

class LoginWithGoogleUseCase {
  final AuthRepository authRepository;

  LoginWithGoogleUseCase(this.authRepository);

  Future<UserCredential> call() async {
    return await authRepository.loginWithGoogle();
  }
}
