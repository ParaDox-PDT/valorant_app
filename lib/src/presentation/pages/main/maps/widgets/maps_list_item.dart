part of '../maps_page_part.dart';

class MapsListItem extends StatelessWidget {
  const MapsListItem({super.key, this.image, this.title});

  final String? title;
  final String? image;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: context.colorScheme.secondary,
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: (){},
              splashColor: context.colorScheme.primary.withOpacity(0.3),
              highlightColor: context.colorScheme.primary.withOpacity(0.3),
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CachedNetworkImage(
                      imageUrl: image ?? 'null',
                      placeholder: (context, url) => Center(
                        child: StaggeredDotsWave(
                          size: 50,
                          color: context.colorScheme.primary,
                        ),
                      ),
                      fadeOutDuration: const Duration(milliseconds: 300),
                      fit: BoxFit.fitHeight,
                      errorWidget: (context, url, error) => Center(
                        child: Icon(
                          Icons.image_not_supported_outlined,
                          color: colorLightScheme.secondary,
                          size: 50.w,
                        ),
                      ),
                    ),
                    Text(
                      title ?? 'null',
                      style: AppTypography.t3Regular,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}
