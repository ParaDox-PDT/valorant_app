part of '../wallpapers_page_part.dart';

mixin WallpapersMixin on State<WallpapersPage> {
  late WallpapersBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = context.read<WallpapersBloc>();
  }

  @override
  void dispose() {
    super.dispose();
    _bloc.close();
  }
}
