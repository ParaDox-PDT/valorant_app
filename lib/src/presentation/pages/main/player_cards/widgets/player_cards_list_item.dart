part of '../player_cards_page_part.dart';

class PlayerCardsListItem extends StatelessWidget {
  const PlayerCardsListItem({super.key, this.image, required this.title});

  final String? image;
  final String title;

  @override
  Widget build(BuildContext context) => DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(
            color: context.colorScheme.secondary,
          ),
        ),
        child: Padding(
          padding: AppUtils.kPaddingAll4,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CachedNetworkImage(
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
              Text(
                title,
                style: AppTypography.t2Medium.copyWith(
                  backgroundColor: context.colorScheme.primary.withOpacity(0.5),
                ),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      );
}
