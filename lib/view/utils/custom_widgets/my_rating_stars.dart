import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyRatingStars extends StatelessWidget {
  final double? itemSize;
  final double initailRating;
  final Color? color;

  const MyRatingStars(
      {Key? key,
      required this.initailRating,
      this.color = Colors.black,
      this.itemSize = 16})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: initailRating,
      itemSize: itemSize!.sp,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: EdgeInsets.symmetric(horizontal: 1.sp),
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: color,
      ),
      onRatingUpdate: (rating) {},
    );
  }
}
