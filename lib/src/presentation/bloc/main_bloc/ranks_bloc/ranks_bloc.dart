import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valorant_app/src/config/router/app_routes.dart';
import 'package:valorant_app/src/core/platform/network_info.dart';
import 'package:valorant_app/src/data/models/bloc_status.dart';
import 'package:valorant_app/src/data/models/ranks/ranks_response.dart';
import 'package:valorant_app/src/domain/repositories/ranks/ranks_repository.dart';

part 'ranks_event.dart';

part 'ranks_state.dart';

class RanksBloc extends Bloc<RanksEvent, RanksState> {
  RanksBloc({
    required this.ranksRepository,
    required this.networkInfo,
  }) : super(const RanksState()) {
    on<RanksGetAllEvent>(_onGetRanks);
  }

  final RanksRepository ranksRepository;
  final NetworkInfo networkInfo;

  Future<void> _onGetRanks(
      RanksGetAllEvent event, Emitter<RanksState> emit) async {
    final List<RanksTiers> ranks = [];

    final RanksResponse? ranksResponse = localSource.getRanks();

    if (ranksResponse != null) {
      emit(
        state.copyWith(
          ranksStatus: BlocStatus.loading,
          ranks: ranksResponse.data?.tiers ?? [],
        ),
      );
    } else {
      emit(
        state.copyWith(
          ranksStatus: BlocStatus.loading,
        ),
      );
    }
    if (await networkInfo.isConnected) {
      final result = await ranksRepository.getRanks();

      result.fold(
        (l) => emit(
          state.copyWith(ranksStatus: BlocStatus.error),
        ),
        (r) {
          ranks.clear();
          emit(
            state.copyWith(
              ranksStatus: BlocStatus.success,
              ranks: r.data?.tiers ?? [],
            ),
          );
          localSource.setRanks(r);
        },
      );
    }
  }
}
