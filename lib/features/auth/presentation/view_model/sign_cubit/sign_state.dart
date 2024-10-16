abstract class SignState {}

class SignInitialState extends SignState {}

class SignSuccessState extends SignState {}

class SignLoadingState extends SignState {}

class SignFailureState extends SignState {
  final String error;

  SignFailureState(this.error);
}
