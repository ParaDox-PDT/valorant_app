part of '../agents_page_part.dart';

List<Widget> agentsListShimmer(BuildContext context) => List.generate(
      6,
      (index) => DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(color: context.colorScheme.secondary),
        ),
        child: CustomShimmer(height: 160.w, width: 200.h),
      ),
    );
