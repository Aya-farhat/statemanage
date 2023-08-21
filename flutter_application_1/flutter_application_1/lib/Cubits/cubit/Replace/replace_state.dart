part of 'replace_cubit.dart';

@immutable
sealed class ReplaceState {}

final class ReplaceInitial extends ReplaceState {}
final class ShowText extends ReplaceState {}
final class ShowImage extends ReplaceState {}
final class ShowCircle extends ReplaceState {}