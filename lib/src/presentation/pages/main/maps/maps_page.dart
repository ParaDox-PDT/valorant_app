part of 'maps_page_part.dart';

class MapsPage extends StatefulWidget {
  const MapsPage({super.key});

  @override
  State<MapsPage> createState() => _MapsPageState();
}

class _MapsPageState extends State<MapsPage> {
  @override
  Widget build(BuildContext context) => BlocBuilder<MapBloc, MapState>(
        buildWhen: (p, c) => p != c,
        builder: (_, state) => Scaffold(
          backgroundColor: _.colorScheme.primary,
          body: CustomScrollView(
            slivers: [
              CustomSliverAppBar(title: 'maps'.tr),
              SliverPadding(
                padding: AppUtils.kPaddingAll24,
                sliver: SliverGrid(
                  delegate: SliverChildListDelegate(
                    state.mapsStatus == BlocStatus.loading
                        ? agentsListShimmer(context)
                        : List.generate(
                            state.maps.length,
                            (index) => Column(
                              children: [
                                DecoratedBox(
                                  decoration: BoxDecoration(
                                    border: Border.all(color: _.colorScheme.secondary,width: 1.5),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(2),
                                    child: CachedNetworkImage(
                                      imageUrl: state.maps[index].listViewIconTall ??
                                          'null',
                                      placeholder: (context, url) => Center(
                                        child: StaggeredDotsWave(
                                          size: 50,
                                          color: context.colorScheme.secondary,
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
                                    )



                                  ),
                                ),
                              ],
                            ),
                          ),
                  ),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 10,
                      childAspectRatio: 348 / 748),
                ),
              ),
            ],
          ),
        ),
      );
}
