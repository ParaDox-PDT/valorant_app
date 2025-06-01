part of '../weapon_detail_page_part.dart';

List<Widget> weaponDetailInfo(BuildContext context, WeaponsData? weaponData) {
  final List<String> titles = [
    'weapon_name'.tr,
    'type'.tr,
    'cost'.tr,
    'fire_type'.tr,
    'fire_rate'.tr,
    'equip_time_sec'.tr,
    'reload_time_sec'.tr,
    'magazine_size'.tr,
    'first_bullet_accuracy'.tr,
    'wall_penetration'.tr,
    'range_start_meters'.tr,
    'range_end_meters'.tr,
    'head_damage'.tr,
    'body_damage'.tr,
    'leg_damage'.tr,
  ];

  final List<String> texts = [
    weaponData?.displayName ?? 'null',
    getWeaponCategory(weaponData?.category ?? ':null'),
    weaponData?.shopData?.cost.toString() ?? 'null',
    getWeaponCategory(weaponData?.weaponStats?.altFireType ?? ':null'),
    weaponData?.weaponStats?.fireRate.toString() ?? 'null',
    weaponData?.weaponStats?.equipTimeSeconds.toString() ?? 'null',
    weaponData?.weaponStats?.reloadTimeSeconds.toString() ?? 'null',
    weaponData?.weaponStats?.magazineSize.toString() ?? 'null',
    weaponData?.weaponStats?.firstBulletAccuracy.toString() ?? 'null',
    getWeaponCategory(
        weaponData?.weaponStats?.wallPenetration.toString() ?? ':null'),
    weaponData?.weaponStats?.damageRanges?[0].rangeStartMeters.toString() ??
        'null',
    weaponData?.weaponStats?.damageRanges?[0].rangeEndMeters.toString() ??
        'null',
    weaponData?.weaponStats?.damageRanges?[0].headDamage.toString() ?? 'null',
    weaponData?.weaponStats?.damageRanges?[0].bodyDamage.toString() ?? 'null',
    weaponData?.weaponStats?.damageRanges?[0].legDamage.toString() ?? 'null',
  ];

  return List.generate(
    titles.length,
    (index) {
      if (index.isOdd) {
        return SlideInRight(
          child: DetailPagesInfoItem(
            title: titles[index],
            text: texts[index],
            isRole: true,
          ),
        );
      } else {
        return SlideInLeft(
          child: DetailPagesInfoItem(
            title: titles[index],
            text: texts[index],
            isRole: true,
          ),
        );
      }
    },
  );
}
