import 'package:kitabat_app/features/auth/domain/repositories/auth_repository.dart';

class LoginWithEmailUseCase {
  LoginWithEmailUseCase(this.authRepository);

  final AuthRepository authRepository;

  Future<void> call(String email, String password) async {
    return await authRepository.loginWithEmail(email, password);
  }
}
