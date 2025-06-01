import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valorant_app/src/config/router/app_routes.dart';
import 'package:valorant_app/src/core/platform/network_info.dart';
import 'package:valorant_app/src/data/models/bloc_status.dart';
import 'package:valorant_app/src/data/models/weapons/weapons_response.dart';
import 'package:valorant_app/src/domain/repositories/weapons/weapons_repository.dart';

part 'weapons_event.dart';

part 'weapons_state.dart';

class WeaponsBloc extends Bloc<WeaponsEvent, WeaponsState> {
  WeaponsBloc(this.networkInfo, this.weaponsRepository)
      : super(const WeaponsState()) {
    on<WeaponsGetAllEvent>(_onGetWeapons);
  }

  final NetworkInfo networkInfo;
  final WeaponsRepository weaponsRepository;

  Future<void> _onGetWeapons(
      WeaponsGetAllEvent event, Emitter<WeaponsState> emit) async {
    List<WeaponsData> weapons = [];

    final WeaponsResponse? weaponsResponse = localSource.getWeapons();

    if (weaponsResponse != null) {
      weapons = weaponsResponse.data ?? [];
      emit(
        state.copyWith(
          weaponsStatus: BlocStatus.success,
          weaponsData: weaponsResponse.data,
        ),
      );
    } else {
      emit(
        state.copyWith(
          weaponsStatus: BlocStatus.loading,
        ),
      );
    }
    if (await networkInfo.isConnected) {
      final result = await weaponsRepository.getWeapons();
      result.fold(
        (l) {
          emit(
            state.copyWith(weaponsStatus: BlocStatus.error),
          );
        },
        (r) {
          weapons = r.data ?? [];
          emit(
            state.copyWith(
              weaponsStatus: BlocStatus.success,
              weaponsData: weapons,
            ),
          );
          localSource.setWeapons(r);
        },
      );
    }
  }
}
