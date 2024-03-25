import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:valorant_app/src/core/platform/network_info.dart';
import 'package:valorant_app/src/data/models/bloc_status.dart';
import 'package:valorant_app/src/data/models/wallpapers/wallpapers_response.dart';
import 'package:valorant_app/src/domain/repositories/wallpapers/wallpapers_repository.dart';

part 'wallpapers_event.dart';

part 'wallpapers_state.dart';

class WallpapersBloc extends Bloc<WallpapersEvent, WallpapersState> {
  WallpapersBloc({
    required this.wallpapersRepository,
    required this.networkInfo,
  }) : super(const WallpapersState()) {
    on<WallpapersGetAllEvent>(_onGetWallpapers);
    on<WallpapersLaunchUrlEvent>(_launchUrl);
  }

  final WallpapersRepository wallpapersRepository;
  final NetworkInfo networkInfo;

  Future<void> _onGetWallpapers(
      WallpapersGetAllEvent event, Emitter<WallpapersState> emit) async {
    if (state.wallpapers.isEmpty) {
      emit(
        state.copyWith(
            wallpapersStatus: BlocStatus.loading, wallpapers: state.wallpapers),
      );
    } else {
      emit(
        state.copyWith(wallpapersStatus: BlocStatus.loading),
      );
    }

    if (await networkInfo.isConnected) {
      final result = await wallpapersRepository.getWallpapers();
      result.fold(
        (l) => emit(
          state.copyWith(wallpapersStatus: BlocStatus.error),
        ),
        (r) {
          emit(
            state.copyWith(
              wallpapersStatus: BlocStatus.success,
              wallpapers: r,
            ),
          );
        },
      );
    } else {
      emit(
        state.copyWith(
          wallpapersStatus: BlocStatus.error,
        ),
      );
    }
  }

  Future<void> _launchUrl(
      WallpapersLaunchUrlEvent event, Emitter<WallpapersState> emit) async {
    final Uri url = Uri.parse(event.urlImage);
    if (!await launchUrl(url)) {
      emit(
        state.copyWith(launchUrlStatus: BlocStatus.error),
      );
    }
    emit(
      state.copyWith(launchUrlStatus: BlocStatus.initial),
    );
  }
}
