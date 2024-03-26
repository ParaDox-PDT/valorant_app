part of 'wallpapers_bloc.dart';

final class WallpapersState extends Equatable {
  const WallpapersState({
    this.wallpapers = const [],
    this.wallpapersStatus = BlocStatus.initial,
    this.launchUrlStatus = BlocStatus.initial,
    this.directory,
    this.limit = 10,
  });

  final BlocStatus wallpapersStatus;
  final BlocStatus launchUrlStatus;
  final int limit;
  final Directory? directory;
  final List<WallpapersResponse> wallpapers;

  WallpapersState copyWith({
    BlocStatus? wallpapersStatus,
    BlocStatus? launchUrlStatus,
    Directory? directory,
    int? limit,
    List<WallpapersResponse>? wallpapers,
  }) =>
      WallpapersState(
        wallpapersStatus: wallpapersStatus ?? this.wallpapersStatus,
        launchUrlStatus: launchUrlStatus ?? this.launchUrlStatus,
        directory: directory ?? this.directory,
        limit: limit ?? this.limit,
        wallpapers: wallpapers ?? this.wallpapers,
      );

  @override
  List<Object?> get props => [
        wallpapersStatus,
        launchUrlStatus,
        limit,
        wallpapers,
        directory,
      ];
}
