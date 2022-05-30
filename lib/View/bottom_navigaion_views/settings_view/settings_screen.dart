import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: const Text('Settings', style: TextStyle(color: Colors.black),),
        elevation: 0,
        backgroundColor: Colors.white,

      ),
    );
  }
}
