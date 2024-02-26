part of '../weapons_page_part.dart';

List<Widget> weaponsList({
  required List<WeaponsData> weaponsData,
  required BuildContext context,
  required VoidCallback onTap,
}) =>
    List.generate(
      weaponsData.length.isOdd ? weaponsData.length - 1 : weaponsData.length,
      (index) {
        if (index.isEven) {
          return SlideInLeft(
            child: CustomWeaponListLeftItem(
              onTap: onTap,
              color: context.colorScheme.secondary,
              child: WeaponsListInnerItem(
                  title: weaponsData[index].displayName ?? 'null',
                  image: weaponsData[index].displayIcon ?? 'null'),
            ),
          );
        } else {
          return SlideInRight(
            child: CustomWeaponListRightItem(
              onTap: onTap,
              color: context.colorScheme.secondary,
              child: WeaponsListInnerItem(
                  title: weaponsData[index].displayName ?? 'null',
                  image: weaponsData[index].displayIcon ?? 'null'),
            ),
          );
        }
      },
    );
