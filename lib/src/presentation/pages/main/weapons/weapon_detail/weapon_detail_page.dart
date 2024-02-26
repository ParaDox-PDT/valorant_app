part of 'weapon_detail_page_part.dart';

class WeaponDetailPage extends StatefulWidget {
  const WeaponDetailPage({super.key, required this.uuid, required this.image});

  final String uuid;
  final String image;

  @override
  State<WeaponDetailPage> createState() => _WeaponDetailPageState();
}

class _WeaponDetailPageState extends State<WeaponDetailPage>
    with WeaponDetailMixin {
  @override
  Widget build(BuildContext context) =>
      BlocBuilder<WeaponDetailBloc, WeaponDetailState>(
        buildWhen: (p, c) => p != c,
        bloc: _bloc,
        builder: (_, state) => Scaffold(
          backgroundColor: context.colorScheme.primary,
          body: state.weaponDetailStatus == BlocStatus.loading &&
                  state.weaponDetail == null
              ? Center(
                  child: StaggeredDotsWave(
                    size: 50,
                    color: context.colorScheme.secondary,
                  ),
                )
              : CustomScrollView(
                  slivers: [
                    WeaponDetailAppBar(
                        image: widget.image,
                        uuid: widget.uuid),
                  ],
                ),
        ),
      );
}
