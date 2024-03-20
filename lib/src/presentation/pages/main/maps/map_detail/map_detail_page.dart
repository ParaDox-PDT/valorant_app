part of 'map_detail_page_part.dart';

class MapDetailPage extends StatefulWidget {
  const MapDetailPage({super.key, required this.uuid});

  final String uuid;

  @override
  State<MapDetailPage> createState() => _MapDetailPageState();
}

class _MapDetailPageState extends State<MapDetailPage> with MapDetailMixin {
  @override
  Widget build(BuildContext context) =>
      BlocBuilder<MapDetailBloc, MapDetailState>(
        bloc: _bloc,
        buildWhen: (p, c) => p != c,
        builder: (_, state) => Scaffold(
          backgroundColor: _.colorScheme.primary,
          body: state.mapDetailStatus == BlocStatus.loading &&
                  state.mapData == null
              ? Center(
                  child: StaggeredDotsWave(
                    size: 50,
                    color: context.colorScheme.secondary,
                  ),
                )
              : CustomScrollView(
                  slivers: [
                    CustomSliverAppBar(title: 'map_detail'.tr),
                    MapDetailItems(
                      mapData: state.mapData,
                    )
                  ],
                ),
        ),
      );
}
