part of 'map_bloc.dart';

class MapState extends Equatable {
  const MapState({
    this.maps = const [],
    this.mapsStatus = BlocStatus.initial,
  });

  final List<MapsData> maps;
  final BlocStatus mapsStatus;

  MapState copyWith({
    List<MapsData>? maps,
    BlocStatus? mapsStatus,
  }) =>
      MapState(
        maps: maps ?? this.maps,
        mapsStatus: mapsStatus ?? this.mapsStatus,
      );

  @override
  List<Object?> get props => [
        maps,
        mapsStatus,
      ];
}
