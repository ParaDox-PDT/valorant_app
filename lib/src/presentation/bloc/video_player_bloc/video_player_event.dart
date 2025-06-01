part of 'video_player_bloc.dart';

abstract class VideoPlayerEvent extends Equatable {
  const VideoPlayerEvent();
}

class VideoPlayerInitializedEvent extends VideoPlayerEvent {
  const VideoPlayerInitializedEvent({required this.isInitialized});

  final bool isInitialized;

  @override
  List<Object> get props => [
        isInitialized,
      ];
}
