part of '../map_detail_page_part.dart';

class MapDetailItems extends StatelessWidget {
  const MapDetailItems({super.key, this.mapData});

  final MapsData? mapData;

  @override
  Widget build(BuildContext context) => SliverPadding(
        padding: AppUtils.kPaddingAll16,
        sliver: SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'map_view'.tr,
                style: AppTypography.t3Regular
                    .copyWith(color: context.colorScheme.secondary),
              ),
              CachedNetworkImage(
                imageUrl: mapData?.displayIcon ?? 'null',
                placeholder: (context, url) => Center(
                  child: StaggeredDotsWave(
                    size: 35.w,
                    color: context.colorScheme.secondary,
                  ),
                ),
                fadeOutDuration: const Duration(milliseconds: 300),
                errorWidget: (context, url, error) => Center(
                  child: Icon(
                    Icons.image_not_supported_outlined,
                    color: colorLightScheme.secondary,
                    size: 35.w,
                  ),
                ),
              ),
              MapDetailRichText(
                  title: '${'map_name'.tr} : ',
                  text: mapData?.displayName ?? 'null'),
              MapDetailRichText(
                  title: '${'map_narrative_description'.tr} : ',
                  text: mapData?.narrativeDescription ?? 'null'),
              MapDetailRichText(
                  title: '${'map_tactical_description'.tr} : ',
                  text: mapData?.tacticalDescription ?? 'null'),
              MapDetailRichText(
                  title: '${'coordinates'.tr} : ',
                  text: mapData?.coordinates ?? 'null'),
            ],
          ),
        ),
      );
}
