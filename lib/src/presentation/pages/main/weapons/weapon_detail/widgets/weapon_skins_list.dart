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
              (index) => SizedBox(
                width: 170.w,
                child: Padding(
                  padding: AppUtils.kPaddingAll12,
                  child: InkWell(
                    onTap: (){},
                    splashColor: context.colorScheme.secondary.withOpacity(0.3),
                    highlightColor: context.colorScheme.secondary.withOpacity(0.3),
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: context.colorScheme.secondary),
                        ),
                        child: Padding(
                          padding: AppUtils.kPaddingAll12,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                skins[index].displayName ?? 'null',
                                style: AppTypography.pRegular,
                                textAlign: TextAlign.center,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              CachedNetworkImage(
                                imageUrl: skins[index].displayIcon ??
                                    (skins[index].chromas?[0].displayIcon ??
                                        'null'),
                                width: 150.w,
                                height: 100.h,
                                fit: BoxFit.contain,
                                errorWidget: (context, url, error) => Center(
                                  child: Icon(
                                    Icons.image_not_supported_outlined,
                                    color: colorLightScheme.secondary,
                                    size: 50.w,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}
