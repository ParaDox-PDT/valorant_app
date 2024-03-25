part of '../weapon_detail_page_part.dart';

void showSkinModalBottomSheet(
    {required List<WeaponsChromas> chromas,
    required BuildContext context,
    required String videoUrl}) {
  showModalBottomSheet<Widget>(
    context: context,
    backgroundColor: const Color(0xFF20262D),
    showDragHandle: true,
    scrollControlDisabledMaxHeightRatio: 0.8,
    builder: (context) => ListView(
      padding: AppUtils.kPaddingAll16,
      children: [
        Text(
          '${'chromas'.tr}:',
          style: AppTypography.t3Regular
              .copyWith(color: context.colorScheme.secondary),
        ),
        ...List.generate(
          chromas.length,
          (i) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: GestureDetector(
              onTap: () {
                showPhotoViewDialog(
                  context: context,
                  url: chromas[i].fullRender ?? 'null',
                );
              },
              child: Column(
                children: [
                  DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.all(color: context.colorScheme.secondary),
                    ),
                    child: Padding(
                      padding: AppUtils.kPaddingAll12,
                      child: Column(
                        children: [
                          Text(
                            chromas[i].displayName ?? 'null',
                            style: AppTypography.pRegular,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                          ),
                          16.g,
                          CachedNetworkImage(
                            imageUrl: chromas[i].fullRender ?? 'null',
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
                  if ((chromas[i].streamedVideo != null) ||
                      (i == 0 && videoUrl.isNotEmpty))
                    InkWell(
                      onTap: () {
                        showDialog<Widget>(
                          context: context,
                          builder: (context) => CustomVideoPlayer(
                              url: (i == 0 && chromas[i].streamedVideo == null)
                                  ? videoUrl
                                  : chromas[i].streamedVideo),
                        );
                      },
                      splashColor:
                          context.colorScheme.secondary.withOpacity(0.3),
                      highlightColor:
                          context.colorScheme.secondary.withOpacity(0.3),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: context.colorScheme.secondary),
                        ),
                        child: Padding(
                          padding: AppUtils.kPaddingAll4,
                          child: Center(
                            child: Icon(
                              Icons.play_arrow,
                              color: context.colorScheme.secondary,
                              size: 28.w,
                            ),
                          ),
                        ),
                      ),
                    )
                ],
              ),
            ),
          ),
        )
      ],
    ),
  );
}

