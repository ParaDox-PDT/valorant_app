import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valorant_app/src/config/router/app_routes.dart';
import 'package:valorant_app/src/core/platform/network_info.dart';
import 'package:valorant_app/src/data/models/bloc_status.dart';
import 'package:valorant_app/src/data/models/sprays/sprays_response.dart';
import 'package:valorant_app/src/domain/repositories/sprays/sprays_repository.dart';

part 'sprays_event.dart';

part 'sprays_state.dart';

class SpraysBloc extends Bloc<SpraysEvent, SpraysState> {
  SpraysBloc({required this.networkInfo, required this.spraysRepository})
      : super(const SpraysState()) {
    on<SpraysGetAllEvent>(_onGetSprays);
  }

  final SpraysRepository spraysRepository;
  final NetworkInfo networkInfo;

  Future<void> _onGetSprays(
      SpraysGetAllEvent event, Emitter<SpraysState> emit) async {
    final SpraysResponse? spraysResponse = localSource.getSprays();

    if (spraysResponse != null) {
      emit(
        state.copyWith(
          spraysStatus: BlocStatus.loading,
          sprays: spraysResponse.data ?? [],
        ),
      );
    } else {
      emit(
        state.copyWith(
          spraysStatus: BlocStatus.loading,
        ),
      );
    }
    if (await networkInfo.isConnected) {
      final result = await spraysRepository.getSprays();

      result.fold(
        (l) => emit(
          state.copyWith(spraysStatus: BlocStatus.error),
        ),
        (r) {
          emit(
            state.copyWith(
              spraysStatus: BlocStatus.success,
              sprays: r.data ?? [],
            ),
          );
          localSource.setSprays(r);
        },
      );
    } else {
      emit(
        state.copyWith(
          spraysStatus: BlocStatus.success,
          sprays: spraysResponse?.data ?? [],
        ),
      );
    }
  }
}
