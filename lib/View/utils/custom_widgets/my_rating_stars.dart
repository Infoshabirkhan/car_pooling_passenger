import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class MyRatingStars extends StatelessWidget {
  final double initailRating;
  const MyRatingStars({Key? key, required this.initailRating}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: initailRating,
      itemSize: 16.sp,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: EdgeInsets.symmetric(horizontal: 1.sp),
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Colors.black,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    );
  }
}
