part of '../video_player_part.dart';

mixin VideoPlayerMixin on State<CustomVideoPlayer> {
  late final VideoPlayerBloc _bloc;

  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;

  @override
  void initState() {
    _bloc = VideoPlayerBloc();

    _videoPlayerController = VideoPlayerController.networkUrl(
      Uri.parse(widget.url),
    )..initialize().then((_) {
        _bloc.add(
          const VideoPlayerInitializedEvent(isInitialized: true),
        );
      });
    _chewieController = ChewieController(
        videoPlayerController: _videoPlayerController,

        aspectRatio: 16 / 9,
        allowPlaybackSpeedChanging: false,
        showOptions: false);
    super.initState();
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    _bloc.close();
    super.dispose();
  }
}
