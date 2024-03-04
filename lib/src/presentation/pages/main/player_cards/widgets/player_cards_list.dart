part of '../player_cards_page_part.dart';

List<Widget> playerCardsList(
        {required List<PlayerCardsData> playerCards,
        required BuildContext context}) =>
    List.generate(
      playerCards.length,
      (index) => index.isEven
          ? SlideInLeft(
              child: SlideInUp(
                from: 400.h,
                child: PlayerCardsListItem(
                  index: index,
                  image: playerCards[index].largeArt,
                  title: playerCards[index].displayName ?? 'null',
                ),
              ),
            )
          : SlideInRight(
              child: SlideInDown(
                from: 400.h,
                child: PlayerCardsListItem(
                  index: index,
                  image: playerCards[index].largeArt,
                  title: playerCards[index].displayName ?? 'null',
                ),
              ),
            ),
    );

Future<void> showPlayerCardsImage(
        BuildContext context, int index, String? image) =>
    showDialog<Future<void>>(
      context: context,
      builder: (context) => index.isEven
          ? SlideInLeft(
              child: GestureDetector(
                onTap: () => context.pop(),
                child: CachedNetworkImage(
                  imageUrl: image ?? 'null',
                  placeholder: (context, url) => Center(
                    child: StaggeredDotsWave(
                      size: 50,
                      color: context.colorScheme.secondary,
                    ),
                  ),
                  fadeOutDuration: const Duration(milliseconds: 300),
                  errorWidget: (context, url, error) => Center(
                    child: Icon(
                      Icons.image_not_supported_outlined,
                      color: colorLightScheme.secondary,
                      size: 50.w,
                    ),
                  ),
                ),
              ),
            )
          : SlideInRight(
              child: GestureDetector(
                onTap: () => context.pop(),
                child: CachedNetworkImage(
                  imageUrl: image ?? 'null',
                  placeholder: (context, url) => Center(
                    child: StaggeredDotsWave(
                      size: 50,
                      color: context.colorScheme.secondary,
                    ),
                  ),
                  fadeOutDuration: const Duration(milliseconds: 300),
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
