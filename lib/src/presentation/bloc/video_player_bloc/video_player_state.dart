part of 'video_player_bloc.dart';

class VideoPlayerState extends Equatable {
  const VideoPlayerState({
    this.isInitialized = false,
  });

  final bool isInitialized;

  VideoPlayerState copyWith({
    bool? isInitialized,
  }) =>
      VideoPlayerState(
        isInitialized: isInitialized ?? this.isInitialized,
      );

  @override
  List<Object?> get props => [
        isInitialized,
      ];
}
