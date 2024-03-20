part of '../maps_page_part.dart';

List<Widget> mapsList(
        {required BuildContext context, required List<MapsData> maps}) =>
    List.generate(
      maps.length,
      (index) {
        if (index.isOdd) {
          return SlideInRight(
            child: MapsListItem(
              image: maps[index].splash,
              title: maps[index].displayName,
            ),
          );
        } else {
          return SlideInLeft(
            child: MapsListItem(
              image: maps[index].splash,
              title: maps[index].displayName,
            ),
          );
        }
      },
    );
