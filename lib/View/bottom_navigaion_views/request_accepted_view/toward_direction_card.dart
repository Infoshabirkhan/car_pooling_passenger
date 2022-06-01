import 'package:flutter/material.dart';


class TowardDirectionCard extends StatelessWidget {
  final VoidCallback onTap;

  const TowardDirectionCard({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(

          width: 200,
          height: 200,
          color: Colors.red,
        ));
  }
}
