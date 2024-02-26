part of '../weapon_detail_page_part.dart';

mixin WeaponDetailMixin on State<WeaponDetailPage> {
  late final WeaponDetailBloc _bloc = context.read<WeaponDetailBloc>();

  @override
  void initState() {
    _bloc.add(
      WeaponDetailGetInfoEvent(uuid: widget.uuid),
    );
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
