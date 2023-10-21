part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

final class ErrorEvent extends HomeEvent {}

final class LodingEvent extends HomeEvent {}

final class SuccessEvent extends HomeEvent {}
