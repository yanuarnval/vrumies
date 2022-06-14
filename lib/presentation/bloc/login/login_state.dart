abstract class LoginAuthState{

}

class InitialLoginAuthState extends LoginAuthState {}

class LoadingLoginAuthState extends LoginAuthState {}

class SuccesLoadLoginAuthState extends LoginAuthState {

}

class FailureLoadLoginAuthState extends LoginAuthState {
  final String errorMessage;

  FailureLoadLoginAuthState(this.errorMessage);

  @override
  String toString() {
    return 'FailureLoadProductState{errorMessage: $errorMessage}';
  }
}