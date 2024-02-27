import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'video_player_event.dart';

part 'video_player_state.dart';

class VideoPlayerBloc extends Bloc<VideoPlayerEvent, VideoPlayerState> {
  VideoPlayerBloc() : super(const VideoPlayerState()) {
    on<VideoPlayerInitializedEvent>(_onInitialized);
  }

  void _onInitialized(
      VideoPlayerInitializedEvent event, Emitter<VideoPlayerState> emit) {
    emit(
      state.copyWith(isInitialized: event.isInitialized),
    );
  }
}
