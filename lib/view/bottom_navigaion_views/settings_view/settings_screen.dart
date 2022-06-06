import 'package:car_pooling_passanger/Controller/cubits/settings_views_cubit/setting_api_cubit.dart';
import 'package:car_pooling_passanger/Model/utils/appcolors.dart';
import 'package:car_pooling_passanger/View/bottom_navigaion_views/settings_view/settings_landscape_loaded_data.dart';
import 'package:car_pooling_passanger/View/bottom_navigaion_views/settings_view/settings_loaded_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  void initState() {
    context.read<SettingApiCubit>().getData();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.kWhite,
      appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Settings',
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
          backgroundColor: Colors.white),
      body: BlocBuilder<SettingApiCubit, SettingApiState>(
        builder: (context, state) {
          if (state is SettingApiLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is SettingApiLoaded) {
            if (size.width > 600) {
              return SettingsLandscapeLoadedData(model: state.model);
            } else {
              return SettingsLoadedData(model: state.model);
            }
          } else if (state is SettingApiError) {
            return Center(
              child: Text(state.error),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
