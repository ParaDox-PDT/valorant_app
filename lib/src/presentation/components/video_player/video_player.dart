part of 'video_player_part.dart';

class CustomVideoPlayer extends StatefulWidget {
  const CustomVideoPlayer({super.key, required this.url});

  final String url;

  @override
  State<CustomVideoPlayer> createState() => _CustomVideoPlayerState();
}

class _CustomVideoPlayerState extends State<CustomVideoPlayer> with VideoPlayerMixin {
  @override
  Widget build(BuildContext context) =>
      BlocBuilder<VideoPlayerBloc, VideoPlayerState>(
        bloc: _bloc,
        buildWhen: (p, c) => p != c,
        builder: (context, state) => DecoratedBox(
          decoration: const BoxDecoration(color: Colors.black54),
          child: Center(
            child: state.isInitialized
                ? Stack(
                    children: [
                      AspectRatio(
                        aspectRatio: 16 / 9,
                        child: Chewie(controller: _chewieController),
                      ),
                      Padding(
                        padding:AppUtils.kPaddingAll12,
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              context.pop();
                            },
                            borderRadius: BorderRadius.circular(100),
                            child: const DecoratedBox(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.close,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                : StaggeredDotsWave(
                    size: 50,
                    color: context.colorScheme.secondary,
                  ),
          ),
        ),
      );
}
