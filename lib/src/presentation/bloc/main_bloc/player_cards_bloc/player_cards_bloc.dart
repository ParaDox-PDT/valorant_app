import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valorant_app/src/config/router/app_routes.dart';
import 'package:valorant_app/src/core/platform/network_info.dart';
import 'package:valorant_app/src/data/models/bloc_status.dart';
import 'package:valorant_app/src/data/models/player_cards/player_cards_response.dart';
import 'package:valorant_app/src/domain/repositories/player_cards/player_cards_repository.dart';

part 'player_cards_event.dart';

part 'player_cards_state.dart';

class PlayerCardsBloc extends Bloc<PlayerCardsEvent, PlayerCardsState> {
  PlayerCardsBloc(
      {required this.playerCardsRepository, required this.networkInfo})
      : super(const PlayerCardsState()) {
    on<PlayerCardsGetAllEvent>(_onGetPlayerCards);
  }

  final PlayerCardsRepository playerCardsRepository;
  final NetworkInfo networkInfo;

  Future<void> _onGetPlayerCards(
      PlayerCardsGetAllEvent event, Emitter<PlayerCardsState> emit) async {
    final PlayerCardsResponse? playerCardsResponse =
        localSource.getPlayerCards();

    if (playerCardsResponse != null) {
      emit(
        state.copyWith(
          playerCardsStatus: BlocStatus.loading,
          playerCards: playerCardsResponse.data ?? [],
        ),
      );
    } else {
      emit(
        state.copyWith(
          playerCardsStatus: BlocStatus.loading,
        ),
      );
    }
    if (await networkInfo.isConnected) {
      final result = await playerCardsRepository.getPlayerCards();
      result.fold(
        (l) => emit(
          state.copyWith(playerCardsStatus: BlocStatus.error),
        ),
        (r) {
          emit(
            state.copyWith(
              playerCardsStatus: BlocStatus.success,
              playerCards: r.data ?? [],
            ),
          );
          localSource.setPlayerCards(r);
        },
      );
    } else {
      emit(
        state.copyWith(
          playerCardsStatus: BlocStatus.success,
          playerCards: playerCardsResponse?.data ?? [],
        ),
      );
    }
  }
}
