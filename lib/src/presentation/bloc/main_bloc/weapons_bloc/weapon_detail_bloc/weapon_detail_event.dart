part of 'weapon_detail_bloc.dart';

abstract class WeaponDetailEvent extends Equatable {
  const WeaponDetailEvent();
}

class WeaponDetailGetInfoEvent extends WeaponDetailEvent {
  const WeaponDetailGetInfoEvent({required this.uuid});

  final String uuid;

  @override
  List<Object?> get props => [uuid];
}
