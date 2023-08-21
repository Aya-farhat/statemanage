part of 'fastbar_cubit.dart';

@immutable
sealed class FastbarState {}

final class FastbarInitial extends FastbarState {}
final class selectFilter extends FastbarState {}
