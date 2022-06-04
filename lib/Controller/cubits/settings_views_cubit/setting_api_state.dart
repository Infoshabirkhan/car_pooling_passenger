part of 'setting_api_cubit.dart';

@immutable
abstract class SettingApiState {}

class SettingApiInitial extends SettingApiState {}
class SettingApiLoading extends SettingApiState {}
class SettingApiLoaded extends SettingApiState {

  final SettingsModel model;

  SettingApiLoaded({required this.model});
}
class SettingApiError extends SettingApiState {

  final String error;

  SettingApiError({required this.error});
}
