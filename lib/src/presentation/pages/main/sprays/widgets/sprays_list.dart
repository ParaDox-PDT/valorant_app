part of '../sprays_page_part.dart';

List<Widget> spraysList(
        {required BuildContext context, required List<SpraysData> sprays}) =>
    List.generate(
      sprays.length,
      (index) {
        if (index.isEven) {
          return SlideInLeft(
            child: SpraysListItem(
              name: sprays[index].displayName ?? 'null',
              image: sprays[index].fullTransparentIcon,
              gif: sprays[index].animationGif,
            ),
          );
        } else {
          return SlideInRight(
            child: SpraysListItem(
              name: sprays[index].displayName ?? 'null',
              image: sprays[index].fullTransparentIcon,
              gif: sprays[index].animationGif,
            ),
          );
        }
      },
    );
