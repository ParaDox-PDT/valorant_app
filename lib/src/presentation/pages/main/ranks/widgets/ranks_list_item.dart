part of '../ranks_page_part.dart';

class RanksListItem extends StatelessWidget {
  const RanksListItem({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) => DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(
            color: context.colorScheme.secondary,
          ),
        ),
        child: Padding(
          padding: AppUtils.kPaddingAll12,
          child: Column(
            children: [
              CachedNetworkImage(
                imageUrl: image,
                placeholder: (context, url) => Center(
                  child: StaggeredDotsWave(
                    size: 50,
                    color: context.colorScheme.secondary,
                  ),
                ),
                width: 75.w,
                height: 75.w,
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
      );
}
