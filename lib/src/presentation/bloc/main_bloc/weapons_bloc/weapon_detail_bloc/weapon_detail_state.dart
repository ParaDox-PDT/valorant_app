part of 'weapon_detail_bloc.dart';

class WeaponDetailState extends Equatable {
  const WeaponDetailState(
      {this.weaponDetail, this.weaponDetailStatus = BlocStatus.initial});

  final BlocStatus weaponDetailStatus;
  final WeaponsData? weaponDetail;

  WeaponDetailState copyWith({
    BlocStatus? weaponDetailStatus,
    WeaponsData? weaponDetail,
  }) =>
      WeaponDetailState(
        weaponDetailStatus: weaponDetailStatus ?? this.weaponDetailStatus,
        weaponDetail: weaponDetail ?? this.weaponDetail,
      );

  @override
  List<Object?> get props => [
        weaponDetail,
        weaponDetailStatus,
      ];
}
