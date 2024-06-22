import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthRequested>(
      (event, emit) async {
        final email = event.email;
        final password = event.password;
        emit(AuthLoading());
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
      },
    );

    on<AuthLogoutRequested>(
      (event, emit) async {
        emit(AuthLoading());
        try {
          await Future.delayed(const Duration(seconds: 1), () {
            return emit(AuthInitial());
          });
        } catch (e) {
          emit(AuthFailure(e.toString()));
        }
      },
    );
  }

  @override
  void onChange(Change<AuthState> change) {
    super.onChange(change);
    print('onChange: ${change.currentState} -> ${change.nextState}');
  }

  @override
  void onTransition(Transition<AuthEvent, AuthState> transition) {
    super.onTransition(transition);
    print('onTransition: ${transition.currentState} ->${transition.event} ${transition.nextState}');
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);
    print('onError: $error');
  }
}
