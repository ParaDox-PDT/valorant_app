part of '../weapons_page_part.dart';

List<Widget> weaponsList({
  required List<WeaponsData> weaponsData,
  required BuildContext context,
}) =>
    List.generate(
      weaponsData.length.isOdd ? weaponsData.length - 1 : weaponsData.length,
      (index) {
        if (index.isEven) {
          return SlideInLeft(
            child: CustomWeaponListLeftItem(
              onTap: () {
                context.push(
                  Routes.weaponDetail,
                  extra: {
                    'uuid': weaponsData[index].uuid ?? 'null',
                    'image': weaponsData[index].displayIcon ?? 'null'
                  },
                );
              },
              color: context.colorScheme.secondary,
              child: WeaponsListInnerItem(
                  uuid: weaponsData[index].uuid ?? 'null',
                  title: weaponsData[index].displayName ?? 'null',
                  image: weaponsData[index].displayIcon ?? 'null'),
            ),
          );
        } else {
          return SlideInRight(
            child: CustomWeaponListRightItem(
              onTap: () {
                context.push(
                  Routes.weaponDetail,
                  extra: {
                    'uuid': weaponsData[index].uuid ?? 'null',
                    'image': weaponsData[index].displayIcon ?? 'null'
                  },
                );
              },
              color: context.colorScheme.secondary,
              child: WeaponsListInnerItem(
                  uuid: weaponsData[index].uuid ?? 'null',
                  title: weaponsData[index].displayName ?? 'null',
                  image: weaponsData[index].displayIcon ?? 'null'),
            ),
          );
        }
      },
    );
