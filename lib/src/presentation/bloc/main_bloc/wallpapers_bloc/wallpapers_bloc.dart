import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_provider/path_provider.dart';
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
    on<WallpapersGetDirectoryEvent>(_onGetDownloadDirectory);
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
      final result =
          await wallpapersRepository.getWallpapers(limit: state.limit);
      result.fold(
        (l) => emit(
          state.copyWith(wallpapersStatus: BlocStatus.error),
        ),
        (r) {
          emit(
            state.copyWith(
                wallpapersStatus: BlocStatus.success,
                wallpapers: r.isEmpty ? state.wallpapers : r,
                limit: r.isEmpty ? state.limit : state.limit + 10),
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

  Future<void> _onGetDownloadDirectory(
      WallpapersGetDirectoryEvent event, Emitter<WallpapersState> emit) async {
    Directory? directory;
    try {
      if (Platform.isIOS) {
        directory = await getApplicationDocumentsDirectory();
      } else {
        directory = Directory('/storage/emulated/0/Download');
        if (!await directory.exists()) {
          directory = await getExternalStorageDirectory();
        }
      }
    } on Exception catch (err) {
      debugPrint('Cannot get download folder path : $err');
    }
    emit(
      state.copyWith(directory: directory),
    );
  }
}
