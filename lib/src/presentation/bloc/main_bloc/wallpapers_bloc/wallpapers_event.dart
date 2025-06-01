part of 'wallpapers_bloc.dart';

sealed class WallpapersEvent extends Equatable {
  const WallpapersEvent();
}

final class WallpapersGetAllEvent extends WallpapersEvent {
  const WallpapersGetAllEvent();

  @override
  List<Object?> get props => [];
}

final class WallpapersLaunchUrlEvent extends WallpapersEvent {
  const WallpapersLaunchUrlEvent({required this.urlImage});

  final String urlImage;

  @override
  List<Object?> get props => [urlImage];
}

final class WallpapersGetDirectoryEvent extends WallpapersEvent {
  const WallpapersGetDirectoryEvent();

  @override
  List<Object?> get props => [];
}
