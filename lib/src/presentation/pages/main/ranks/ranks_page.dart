part of 'ranks_page_part.dart';

class RanksPage extends StatefulWidget {
  const RanksPage({super.key});

  @override
  State<RanksPage> createState() => _RanksPageState();
}

class _RanksPageState extends State<RanksPage> with RanksMixin {
  @override
  Widget build(BuildContext context) => BlocBuilder<RanksBloc, RanksState>(
        buildWhen: (p, c) => p != c,
        builder: (context, state) {
          ranksItems = ranksItems.isEmpty
              ? ranksList(ranks: state.ranks, context: context)
              : ranksItems;
          return Scaffold(
            backgroundColor: context.colorScheme.primary,
            body: CustomScrollView(
              slivers: [
                CustomSliverAppBar(title: 'ranks'.tr),
                SliverReorderableList(
                  itemBuilder: (context, index) => ReorderableDragStartListener(
                    key: Key(
                      index.toString(),
                    ),
                    index: index,
                    child: ranksItems[index],
                  ),
                  itemCount: state.ranks.length % 3 != 0
                      ? (state.ranks.length ~/ 3) + 1
                      : (state.ranks.length ~/ 3),
                  onReorder: (oldIndex, newIndex) {
                    if (oldIndex < newIndex) {
                      newIndex -= 1;
                    }
                    final item = ranksItems.removeAt(oldIndex);
                    ranksItems.insert(newIndex, item);
                  },
                  onReorderEnd: (p0) => context.read<RanksBloc>().add(
                        const RanksChangePositionEvent(),
                      ),
                ),
              ],
            ),
          );
        },
      );
}
