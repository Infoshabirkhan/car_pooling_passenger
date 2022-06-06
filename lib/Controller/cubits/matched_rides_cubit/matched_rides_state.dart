part of 'matched_rides_cubit.dart';

@immutable
abstract class MatchedRidesState {}

class MatchedRidesInitial extends MatchedRidesState {}

class MatchedRidesLoading extends MatchedRidesState {}

class MatchedRidesLoaded extends MatchedRidesState {
  final List<MatchedRidesModel> model;

  MatchedRidesLoaded({required this.model});
}

class MatchedRidesError extends MatchedRidesState {
  final String error;

  MatchedRidesError({required this.error});
}
