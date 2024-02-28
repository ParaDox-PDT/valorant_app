import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valorant_app/src/config/router/app_routes.dart';
import 'package:valorant_app/src/core/platform/network_info.dart';
import 'package:valorant_app/src/data/models/bloc_status.dart';
import 'package:valorant_app/src/data/models/weapons/weapons_response.dart';
import 'package:valorant_app/src/domain/repositories/weapons/weapons_repository.dart';

part 'weapon_detail_event.dart';

part 'weapon_detail_state.dart';

class WeaponDetailBloc extends Bloc<WeaponDetailEvent, WeaponDetailState> {
  WeaponDetailBloc( {required this.weaponsRepository,required this.networkInfo,})
      : super(const WeaponDetailState()) {
    on<WeaponDetailGetInfoEvent>(_onGetWeaponDetail);
  }

  final WeaponsRepository weaponsRepository;
  final NetworkInfo networkInfo;

  Future<void> _onGetWeaponDetail(
      WeaponDetailGetInfoEvent event, Emitter<WeaponDetailState> emit) async {
    final WeaponsData? weaponDetail = localSource.getWeaponDetail(event.uuid);
    emit(
      state.copyWith(
          weaponDetailStatus: BlocStatus.loading, weaponDetail: weaponDetail),
    );
    final result = await weaponsRepository.getWeaponDetail(uuid: event.uuid);
    result.fold(
      (l) => emit(
        state.copyWith(weaponDetailStatus: BlocStatus.error),
      ),
      (r) async {
        emit(
          state.copyWith(
              weaponDetail: r.data, weaponDetailStatus: BlocStatus.success),
        );
        await localSource.setWeaponDetail(r.data);
      },
    );
  }
}
