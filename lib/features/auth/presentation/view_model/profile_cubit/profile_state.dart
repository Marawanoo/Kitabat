abstract class ProfileState {}

class ProfileInitialState extends ProfileState {}

class ProfileSuccessState extends ProfileState {}

class ProfileLoadingState extends ProfileState {}

class ProfileFailureState extends ProfileState {
  final String error;

  ProfileFailureState(this.error);
}
