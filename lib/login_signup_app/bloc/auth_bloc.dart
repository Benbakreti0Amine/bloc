import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthRequested>((event, emit) async {
      final email = event.email;
      final password = event.password;

      try {
        if (password.length < 6) {
          emit(AuthFailure("password length must be 6 or more"));
          return;
        }
        await Future.delayed(const Duration(seconds: 1), () {
          return emit(AuthSuccess(uid: '$email-$password'));
        });
      } catch (e) {
        emit(AuthFailure(e.toString()));
      }
    });
  }
}
