part of 'map_bloc.dart';

sealed class MapEvent extends Equatable {
  const MapEvent();
}

class MapGetAllEvent extends MapEvent {
  const MapGetAllEvent();

  @override
  List<Object?> get props => [];
}
