part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class ErrorState extends HomeState {
  String error;
  ErrorState(this.error);
}

final class LodingState extends HomeState {}

final class SuccessState extends HomeState {
  HomeEntity homeInfo;
  SuccessState(this.homeInfo);
}
