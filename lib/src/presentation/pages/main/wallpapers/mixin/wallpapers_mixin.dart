part of '../wallpapers_page_part.dart';

mixin WallpapersMixin on State<WallpapersPage> {
  late WallpapersBloc _bloc;
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _bloc = context.read<WallpapersBloc>();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    super.dispose();
    _bloc.close();
  }
}
