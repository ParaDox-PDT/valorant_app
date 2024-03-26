part of '../wallpapers_page_part.dart';

mixin WallpapersMixin on State<WallpapersPage> {
  late WallpapersBloc _bloc;
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _bloc = context.read<WallpapersBloc>();
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
        _bloc.add(const WallpapersGetAllEvent());
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _bloc.close();
  }
}
