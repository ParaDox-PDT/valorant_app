part of 'player_cards_page_part.dart';

class PlayerCardsPage extends StatefulWidget {
  const PlayerCardsPage({super.key});

  @override
  State<PlayerCardsPage> createState() => _PlayerCardsPageState();
}

class _PlayerCardsPageState extends State<PlayerCardsPage> {
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<PlayerCardsBloc, PlayerCardsState>(
        buildWhen: (p, c) => p != c,
        builder: (_, state) => Scaffold(
          backgroundColor: _.colorScheme.primary,
          body: Scrollbar(controller: scrollController,child: CustomScrollView(
            controller: scrollController,
            slivers: [
              CustomSliverAppBar(title: 'player_cards'.tr),
              SliverPadding(
                padding: AppUtils.kPaddingAll24,
                sliver: SliverGrid(
                  delegate: SliverChildListDelegate(
                    state.playerCardsStatus == BlocStatus.loading &&
                        state.playerCards.isEmpty
                        ? agentsListShimmer(context)
                        : playerCardsList(
                        playerCards: state.playerCards, context: _),
                  ),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 10,
                      childAspectRatio: 272 / 642),
                ),
              ),
            ],
          ),),
        ),
      );
}
