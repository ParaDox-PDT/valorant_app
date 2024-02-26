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
                        : weaponsList(
                            weaponsData: state.weaponsData,
                            context: context,
                            onTap: () {}),
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
                WeaponsListLastItem(
                  title: state.weaponsData.last.displayName ?? 'null',
                  image: state.weaponsData.last.displayIcon ?? 'null',
                  onTap: () {},
                )
            ],
          ),
        ),
      );
}
