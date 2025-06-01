part of '../player_cards_page_part.dart';

class PlayerCardsListItem extends StatelessWidget {
  const PlayerCardsListItem(
      {super.key, this.image, required this.title, required this.index});

  final String? image;
  final String title;
  final int index;

  @override
  Widget build(BuildContext context) => InkWell(
        splashColor: context.colorScheme.secondary.withOpacity(0.8),
        highlightColor: context.colorScheme.secondary.withOpacity(0.5),
        onTap: () {
          showPlayerCardsImage(context, index, image);
        },
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(
              color: context.colorScheme.secondary,
            ),
          ),
          child: Padding(
            padding: AppUtils.kPaddingAll4,
            child: CachedNetworkImage(
              imageUrl: image ?? 'null',
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
          ),
        ),
      );
}
