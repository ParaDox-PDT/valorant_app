import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:valorant_app/src/config/themes/themes.dart';

class CustomShimmer extends StatelessWidget {
  const CustomShimmer(
      {super.key,
      this.vMargin = 0,
      this.hMargin = 0,
      this.hPadding = 0,
      this.vPadding = 0,
      this.borderRadius = 0,
      required this.height,
      required this.width});

  final double vMargin;
  final double hMargin;
  final double hPadding;
  final double vPadding;
  final double height;
  final double width;
  final double borderRadius;

  @override
  Widget build(BuildContext context) => Shimmer(
        direction: ShimmerDirection.ttb,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.transparent,
            colorLightScheme.secondary,
            Colors.transparent,
            colorLightScheme.secondary,
          ],
        ),
        child: Container(
          width: width,
          margin: EdgeInsets.symmetric(vertical: vMargin, horizontal: hMargin),
          padding:
              EdgeInsets.symmetric(vertical: vPadding, horizontal: hPadding),
          height: height,
          decoration: BoxDecoration(
            color: Colors.red,
            border: Border.all(
              width: 2,
              color: Colors.red,
            ),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
      );
}
