import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valorant_app/src/config/router/app_routes.dart';
import 'package:valorant_app/src/core/platform/network_info.dart';
import 'package:valorant_app/src/data/models/bloc_status.dart';
import 'package:valorant_app/src/data/models/maps/maps_response.dart';
import 'package:valorant_app/src/domain/repositories/maps/maps_repository.dart';

part 'map_detail_event.dart';

part 'map_detail_state.dart';

class MapDetailBloc extends Bloc<MapDetailEvent, MapDetailState> {
  MapDetailBloc({required this.mapsRepository, required this.networkInfo})
      : super(const MapDetailState()) {
    on<MapDetailGetInfoEvent>(_onGetMapDetailInfo);
  }

  final MapsRepository mapsRepository;
  final NetworkInfo networkInfo;

  Future<void> _onGetMapDetailInfo(
      MapDetailGetInfoEvent event, Emitter<MapDetailState> emit) async {
    final MapsData? mapData = localSource.getMapDetail(event.uuid);
    emit(
      state.copyWith(mapDetailStatus: BlocStatus.loading, mapData: mapData),
    );
    final result = await mapsRepository.getMapDetail(uuid: event.uuid);
    result.fold(
      (l) => emit(
        state.copyWith(mapDetailStatus: BlocStatus.error),
      ),
      (r) async {
        emit(
          state.copyWith(mapData: r.data, mapDetailStatus: BlocStatus.success),
        );
        await localSource.setMapDetail(r.data);
      },
    );
  }
}
