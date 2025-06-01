part of '../weapons_page_part.dart';

class WeaponsListLastItem extends StatelessWidget {
  const WeaponsListLastItem(
      {super.key,
      required this.title,
      required this.image,
      required this.onTap, required this.uuid});

  final String title;
  final String image;
  final String uuid;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => SliverPadding(
        padding: AppUtils.kPaddingT0L16R16B12,
        sliver: SliverToBoxAdapter(
          child: ZoomTapAnimation(
            onTap: onTap,
            child: DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(color: context.colorScheme.secondary),
              ),
              child: Padding(
                padding: AppUtils.kPaddingAll16,
                child: Column(
                  children: [
                    Text(title),
                    10.g,
                    Hero(
                      tag: '${AppKeys.weaponDetailImage}_$uuid',
                      child: CachedNetworkImage(
                        imageUrl: image,
                        height: 80.h,
                        fit: BoxFit.fitWidth,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}
