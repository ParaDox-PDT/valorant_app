part of '../maps_page_part.dart';

List<Widget> mapsShimmer({required BuildContext context}) => List.generate(
      6,
      (index) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(color: context.colorScheme.secondary),
          ),
          child: CustomShimmer(
            height: MediaQuery.sizeOf(context).height * .28,
            width: double.infinity,
          ),
        ),
      ),
    );
