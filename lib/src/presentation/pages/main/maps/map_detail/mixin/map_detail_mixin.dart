part of '../map_detail_page_part.dart';

mixin MapDetailMixin on State<MapDetailPage> {
  late final MapDetailBloc _bloc = context.read<MapDetailBloc>();

  @override
  void initState() {
    _bloc.add(MapDetailGetInfoEvent(uuid: widget.uuid));
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
