part of 'sprays_page_part.dart';

class SpraysPage extends StatefulWidget {
  const SpraysPage({super.key});

  @override
  State<SpraysPage> createState() => _SpraysPageState();
}

class _SpraysPageState extends State<SpraysPage> {
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) => BlocBuilder<SpraysBloc, SpraysState>(
        buildWhen: (p, c) => p != c,
        builder: (context, state) => Scaffold(
          backgroundColor: context.colorScheme.primary,
          body: Scrollbar(
            controller: scrollController,
            child: CustomScrollView(
              controller: scrollController,
              slivers: [
                CustomSliverAppBar(
                  title: 'sprays'.tr,
                ),
                SliverPadding(
                  padding: AppUtils.kPaddingAll12,
                  sliver: SliverGrid(
                    delegate: SliverChildListDelegate(
                      (state.sprays.isEmpty &&
                              state.spraysStatus == BlocStatus.loading)
                          ? agentsListShimmer(context)
                          : spraysList(context: context, sprays: state.sprays),
                    ),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 14,
                      crossAxisSpacing: 14,
                      childAspectRatio: 0.7,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );
}
