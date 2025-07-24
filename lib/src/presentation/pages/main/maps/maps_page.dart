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
    builder:
        (__, state) => Scaffold(
          backgroundColor: __.colorScheme.primary,
          body: CustomScrollView(
            slivers: [
              CustomSliverAppBar(title: 'maps'.tr),
              SliverPadding(
                padding: AppUtils.kPaddingAll24,
                sliver: SliverList(
                  delegate: SliverChildListDelegate(
                    state.mapsStatus == BlocStatus.loading && state.maps.isEmpty
                        ? mapsShimmer(context: context)
                        : mapsList(context: context, maps: state.maps),
                  ),
                ),
              ),
            ],
          ),
        ),
  );
}
