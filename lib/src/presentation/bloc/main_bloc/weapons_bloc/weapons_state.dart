part of 'weapons_bloc.dart';

class WeaponsState extends Equatable {
  const WeaponsState({
    this.weaponsStatus = BlocStatus.initial,
    this.weaponsData = const [],
  });

  final BlocStatus weaponsStatus;
  final List<WeaponsData> weaponsData;

  WeaponsState copyWith({
    BlocStatus? weaponsStatus,
    List<WeaponsData>? weaponsData,
  }) =>
      WeaponsState(
        weaponsStatus: weaponsStatus ?? this.weaponsStatus,
        weaponsData: weaponsData ?? this.weaponsData,
      );

  @override
  List<Object?> get props => [
        weaponsStatus,
        weaponsData,
      ];
}
