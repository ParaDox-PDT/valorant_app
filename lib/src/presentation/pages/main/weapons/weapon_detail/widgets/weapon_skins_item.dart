part of '../weapon_detail_page_part.dart';

class WeaponSkinsItem extends StatelessWidget {
  const WeaponSkinsItem({super.key, required this.skin, required this.onTap});

  final WeaponsSkins skin;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => SizedBox(
        width: 170.w,
        child: Padding(
          padding: AppUtils.kPaddingAll12,
          child: InkWell(
            onTap: onTap,
            splashColor: context.colorScheme.secondary.withOpacity(0.3),
            highlightColor: context.colorScheme.secondary.withOpacity(0.3),
            child: DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(color: context.colorScheme.secondary),
              ),
              child: Padding(
                padding: AppUtils.kPaddingAll12,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      skin.displayName ?? 'null',
                      style: AppTypography.pRegular,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    CachedNetworkImage(
                      imageUrl: skin.displayIcon ??
                          (skin.chromas?[0].fullRender ?? 'null'),
                      width: 150.w,
                      height: 100.h,
                      placeholder: (context, url) => Center(
                        child: StaggeredDotsWave(
                          size: 50,
                          color: context.colorScheme.secondary,
                        ),
                      ),
                      fadeOutDuration: const Duration(milliseconds: 300),
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
              ),
            ),
          ),
        ),
      );
}

