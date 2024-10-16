import 'package:kitabat_app/features/auth/domain/repositories/auth_repository.dart';

class RegisterUserUseCase {
  RegisterUserUseCase(this.authRepository);

  final AuthRepository authRepository;

  Future<void> call(
      String firstName, String lastName, String email, String password) async {
    return await authRepository.registerUser(
        firstName, lastName, email, password);
  }
}
