import 'package:car_pooling_passanger/Model/utils/appcolors.dart';
import 'package:car_pooling_passanger/Model/utils/remove_glow.dart';
import 'package:car_pooling_passanger/View/onBording_views/login_views/login_landscape.dart';
import 'package:car_pooling_passanger/View/onBording_views/login_views/login_potrait_view.dart';
import 'package:car_pooling_passanger/View/utils/custom_widgets/custom_button.dart';
import 'package:car_pooling_passanger/View/verification_code_view/verification_code_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(



      body: Stack(
        children: [



          Container(
            width: 1.sw,
            height: 1.sh,
            color: AppColors.kBlue,
            child: Image.asset("assets/images/pageview_pic_one.png",
                fit: BoxFit.cover),
          ),
          Container(
            width: 1.sw,
            height: 1.sh,
            color: AppColors.kBlue.withOpacity(0.5),
          ),


          ScrollConfiguration(
            behavior:  RemoveGlow(),
            child: size.width > 600 ?
                const LoginLandscapeView()
                : const LoginPotraitView(),
          ),
        ],
      ),
    );
  }
}
