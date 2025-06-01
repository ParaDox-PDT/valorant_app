import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valorant_app/src/config/router/app_routes.dart';
import 'package:valorant_app/src/core/platform/network_info.dart';
import 'package:valorant_app/src/data/models/bloc_status.dart';
import 'package:valorant_app/src/data/models/maps/maps_response.dart';
import 'package:valorant_app/src/domain/repositories/maps/maps_repository.dart';

part 'map_event.dart';

part 'map_state.dart';

class MapBloc extends Bloc<MapEvent, MapState> {
  MapBloc({
    required this.mapsRepository,
    required this.networkInfo,
  }) : super(const MapState()) {
    on<MapGetAllEvent>(_onGetMaps);
  }

  final MapsRepository mapsRepository;
  final NetworkInfo networkInfo;

  Future<void> _onGetMaps(MapGetAllEvent event, Emitter<MapState> emit) async {
    final MapsResponse? mapsResponse = localSource.getMaps();
    if (mapsResponse != null) {
      emit(
        state.copyWith(
          mapsStatus: BlocStatus.loading,
          maps: mapsResponse.data ?? [],
        ),
      );
    } else {
      emit(
        state.copyWith(
          mapsStatus: BlocStatus.loading,
        ),
      );
    }

    if (await networkInfo.isConnected) {
      final result = await mapsRepository.getMaps();
      result.fold(
        (l) => emit(
          state.copyWith(mapsStatus: BlocStatus.error),
        ),
        (r) {
          emit(
            state.copyWith(
              mapsStatus: BlocStatus.success,
              maps: r.data ?? [],
            ),
          );
          localSource.setMaps(r);
        },
      );
    } else {
      emit(
        state.copyWith(
          mapsStatus: BlocStatus.success,
          maps: mapsResponse?.data ?? [],
        ),
      );
    }
  }
}
