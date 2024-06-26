part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}

final class AuthRequested extends AuthEvent {
  final String email;
  final String password;

  AuthRequested({required this.email, required this.password});
}

final class AuthLogoutRequested extends AuthEvent{}