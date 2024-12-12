import 'package:flutter/material.dart';
import 'package:nitingamechi/utils/app_dimens.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerLoadingWidget extends StatelessWidget {
  const ShimmerLoadingWidget(
      {super.key,
      required this.height,
      required this.width,
      this.radius,
      this.widget});
  final double height;
  final double width;
  final double? radius;
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.black12,
      highlightColor: Colors.white,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          // color: AppColors.kPrimaryColor,
          color: Colors.black12,
          borderRadius: BorderRadius.all(
            Radius.circular(radius ?? kBorderRadius),
          ),
        ),
        child: widget,
      ),
    );
  }
}
