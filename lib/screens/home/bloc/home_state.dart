




import '../../../data/models/home.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}
////

class HomeSuccsess extends HomeState {
  final HomeEntity homeEntity;
  
  var HomeEntity;
  HomeSuccsess(this.HomeEntity, this.homeEntity);
}

class HomeError extends HomeState {}

class HomeLoading extends HomeState {}
