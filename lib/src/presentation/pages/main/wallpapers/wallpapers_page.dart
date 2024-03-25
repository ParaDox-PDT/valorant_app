part of 'wallpapers_page_part.dart';

class WallpapersPage extends StatefulWidget {
  const WallpapersPage({super.key});

  @override
  State<WallpapersPage> createState() => _WallpapersPageState();
}

class _WallpapersPageState extends State<WallpapersPage> with WallpapersMixin {
  @override
  Widget build(BuildContext context) =>
      BlocBuilder<WallpapersBloc, WallpapersState>(
        bloc: _bloc,
        buildWhen: (p, c) => p != c,
        builder: (_, state) => Scaffold(
          backgroundColor: _.colorScheme.primary,
          body: Scrollbar(
            controller: _scrollController,
            child: CustomScrollView(
              controller: _scrollController,
              slivers: [
                CustomSliverAppBar(title: 'wallpapers'.tr),
                SliverPadding(
                  padding: AppUtils.kPaddingAll16,
                  sliver: SliverList(
                    delegate: SliverChildListDelegate(
                      state.wallpapersStatus == BlocStatus.loading &&
                              state.wallpapers.isEmpty
                          ? wallpapersShimmer(context: _)
                          : wallpapersPhotos(
                              context: context,
                              wallpapers: state.wallpapers,
                              bloc: _bloc),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );
}
