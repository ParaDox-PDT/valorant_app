part of '../weapon_detail_page_part.dart';

class WeaponSkinsList extends StatelessWidget {
  const WeaponSkinsList({super.key, required this.skins});

  final List<WeaponsSkins> skins;

  @override
  Widget build(BuildContext context) => SliverToBoxAdapter(
        child: SizedBox(
          height: 190.h,
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            scrollDirection: Axis.horizontal,
            children: List.generate(
              skins.length,
              (index) => WeaponSkinsItem(
                skin: skins[index],
                onTap: () => showSkinModalBottomSheet(
                  chromas: skins[index].chromas ?? [],
                  context: context,
                  videoUrl: skins[index].levels?[0].streamedVideo ?? '',
                ),
              ),
            ),
          ),
        ),
      );
}
