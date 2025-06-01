import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:valorant_app/src/config/themes/themes.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({super.key, required this.title,  this.onTap});
  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) =>  SliverAppBar(
    pinned: true,
    leading: IconButton(
      onPressed:onTap ?? () {
        context.pop();
      },
      icon: SvgPicture.asset(AppIcons.backArrow),
    ),
    title: Text(
      title,
    ),
  );
}
