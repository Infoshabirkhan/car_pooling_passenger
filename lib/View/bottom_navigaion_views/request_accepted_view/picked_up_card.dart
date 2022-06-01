import 'package:flutter/material.dart';


class PickedUpCard extends StatelessWidget {
  final VoidCallback onTap;
  const PickedUpCard({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
          width: 200,
            height: 200,
          color: Colors.blue,
        ));
  }
}
