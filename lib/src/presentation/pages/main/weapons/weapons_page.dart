part of 'weapons_page_part.dart';

class WeaponsPage extends StatefulWidget {
  const WeaponsPage({super.key});

  @override
  State<WeaponsPage> createState() => _WeaponsPageState();
}

class _WeaponsPageState extends State<WeaponsPage> {
  @override
  Widget build(BuildContext context) => BlocBuilder<WeaponsBloc, WeaponsState>(
        buildWhen: (p, c) => p != c,
        builder: (_, state) => Scaffold(
          backgroundColor: context.colorScheme.primary,
          body: CustomScrollView(
             
            slivers: [
              CustomSliverAppBar(
                title: 'weapons'.tr,
              ),
              SliverPadding(
                padding: AppUtils.kPaddingAll16,
                sliver: SliverGrid(
                  delegate: SliverChildListDelegate(
                    state.weaponsStatus == BlocStatus.loading &&
                            state.weaponsData.isEmpty
                        ? agentsListShimmer(context)
                        : List.generate(
                            state.weaponsData.length.isOdd
                                ? state.weaponsData.length - 1
                                : state.weaponsData.length, (index) {
                            if (index.isEven) {
                              return SlideInLeft(
                                child: CustomWeaponListLeftItem(
                                  color: context.colorScheme.secondary,
                                  child: Column(
                                    children: [
                                      20.g,
                                      Text(state
                                              .weaponsData[index].displayName ??
                                          'null'),
                                      10.g,
                                      CachedNetworkImage(
                                        imageUrl: state.weaponsData[index]
                                                .displayIcon ??
                                            'null',
                                        height: 80.h,
                                        fit: BoxFit.fitWidth,
                                      )
                                    ],
                                  ),
                                ),
                              );
                            } else {
                              return SlideInRight(
                                child: CustomWeaponListRightItem(
                                  color: context.colorScheme.secondary,
                                  child: Column(
                                    children: [
                                      20.g,
                                      Text(state
                                              .weaponsData[index].displayName ??
                                          'null'),
                                      10.g,
                                      CachedNetworkImage(
                                        imageUrl: state.weaponsData[index]
                                                .displayIcon ??
                                            'null',
                                        height: 80.h,
                                        fit: BoxFit.fitWidth,
                                      )
                                    ],
                                  ),
                                ),
                              );
                            }
                          }),
                  ),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio:
                          ((MediaQuery.sizeOf(context).width / 2) - 20.w) /
                              150.h,
                      crossAxisSpacing: 10.w,
                      mainAxisSpacing: 16.h),
                ),
              ),
              if (state.weaponsData.length.isOdd)
                SliverPadding(
                  padding: AppUtils.kPaddingT0L16R16B12,
                  sliver: SliverToBoxAdapter(
                    child: ZoomTapAnimation(
                      child: SlideInUp(
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            border: Border.all(color: context.colorScheme.secondary),
                          ),
                          child: Padding(
                            padding: AppUtils.kPaddingAll16,
                            child: Column(
                              children: [
                                Text(state
                                    .weaponsData.last.displayName ??
                                    'null'),
                                10.g,
                                CachedNetworkImage(
                                  imageUrl: state.weaponsData.last
                                      .displayIcon ??
                                      'null',
                                  height: 80.h,
                                  fit: BoxFit.fitWidth,
                                )
                              ],
                            ),
                          )
                        ),
                      ),
                    ),
                  ),
                )
            ],
          ),
        ),
      );
}
