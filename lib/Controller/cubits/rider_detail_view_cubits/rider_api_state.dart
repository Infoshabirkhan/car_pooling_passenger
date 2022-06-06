part of 'rider_api_cubit.dart';

@immutable
abstract class RiderApiState {}

class RiderApiInitial extends RiderApiState {}

class RiderApiLoading extends RiderApiState {}

class RiderApiLoaded extends RiderApiState {
  final List<RiderDetailModel> model;

  RiderApiLoaded({required this.model});
}

class RiderApiError extends RiderApiState {
  final String error;

  RiderApiError({required this.error});
}
