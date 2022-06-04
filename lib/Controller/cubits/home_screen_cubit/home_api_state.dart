part of 'home_api_cubit.dart';

@immutable
abstract class HomeApiState {}

class HomeApiInitial extends HomeApiState {}
class HomeApiLoading extends HomeApiState {}
class HomeApiLoaded extends HomeApiState {

  final List<HomeModel> model;

  HomeApiLoaded({required this.model});
}
class HomeApiError extends HomeApiState {
  final String error;

  HomeApiError({required this.error});
}
