part of 'map_detail_bloc.dart';

sealed class MapDetailEvent extends Equatable {
  const MapDetailEvent();
}

class MapDetailGetInfoEvent extends MapDetailEvent {
  const MapDetailGetInfoEvent({required this.uuid});

  final String uuid;

  @override
  List<Object?> get props => [uuid];
}
