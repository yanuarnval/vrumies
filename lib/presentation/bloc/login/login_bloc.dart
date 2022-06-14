
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vrumies/data/services/firebase_auth.dart';

import 'login_event.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginAuthState> {
  LoginBloc() : super(InitialLoginAuthState()) {
    on<LoginEvent>((event, emit) async {
      if (event is Login) {
        try {
          await FirebaseAuthServices().signWithGoogle();
          emit(SuccesLoadLoginAuthState());
        } on FirebaseAuthException catch (e) {
          // Your logic for Firebase related exceptions
          emit(FailureLoadLoginAuthState(e.message.toString()));
        } catch (e) {
          emit(FailureLoadLoginAuthState(e.toString()));
        }
      }
    });
  }
}
