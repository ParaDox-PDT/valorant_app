part of 'player_cards_page_part.dart';

class PlayerCardsPage extends StatefulWidget {
  const PlayerCardsPage({super.key});

  @override
  State<PlayerCardsPage> createState() => _PlayerCardsPageState();
}

class _PlayerCardsPageState extends State<PlayerCardsPage> {
  @override
  Widget build(BuildContext context) =>
      BlocBuilder<PlayerCardsBloc, PlayerCardsState>(
        buildWhen: (p, c) => p != c,
        builder: (_, state) => Scaffold(
          backgroundColor: _.colorScheme.primary,
          body: CustomScrollView(
            slivers: [
              CustomSliverAppBar(title: 'player_cards'.tr),
              SliverPadding(
                padding: AppUtils.kPaddingAll24,
                sliver: SliverGrid(
                  delegate: SliverChildListDelegate(
                    state.playerCardsStatus == BlocStatus.loading &&
                            state.playerCards.isEmpty
                        ? agentsListShimmer(context)
                        : List.generate(
                            state.playerCards.length,
                            (index) => PlayerCardsListItem(
                              image: state.playerCards[index].largeArt,
                              title: state.playerCards[index].displayName ??
                                  'null',
                            ),
                          ),
                  ),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 10,
                      childAspectRatio: 272/642),
                ),
              ),
            ],
          ),
        ),
      );
}
