part of 'password_cubit.dart';

@immutable
sealed class PasswordState {}

final class PasswordInitial extends PasswordState {}
final class Visible extends PasswordState {}

