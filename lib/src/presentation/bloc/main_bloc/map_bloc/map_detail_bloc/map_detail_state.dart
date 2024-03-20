part of 'map_detail_bloc.dart';

class MapDetailState extends Equatable {
  const MapDetailState({
    this.mapDetailStatus = BlocStatus.initial,
    this.mapData,
  });

  final BlocStatus mapDetailStatus;
  final MapsData? mapData;

  MapDetailState copyWith({
    BlocStatus? mapDetailStatus,
    MapsData? mapData,
  }) =>
      MapDetailState(
        mapDetailStatus: mapDetailStatus ?? this.mapDetailStatus,
        mapData: mapData ?? this.mapData,
      );

  @override
  List<Object?> get props => [
        mapDetailStatus,
        mapData,
      ];
}
