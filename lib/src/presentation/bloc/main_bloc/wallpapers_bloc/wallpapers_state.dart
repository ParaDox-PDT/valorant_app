part of 'wallpapers_bloc.dart';

final class WallpapersState extends Equatable {
  const WallpapersState({
    this.wallpapers = const [],
    this.wallpapersStatus = BlocStatus.initial,
    this.launchUrlStatus = BlocStatus.initial,
    this.limit = 10,
  });

  final BlocStatus wallpapersStatus;
  final BlocStatus launchUrlStatus;
  final int limit;
  final List<WallpapersResponse> wallpapers;

  WallpapersState copyWith({
    BlocStatus? wallpapersStatus,
    BlocStatus? launchUrlStatus,
    int? limit,
    List<WallpapersResponse>? wallpapers,
  }) =>
      WallpapersState(
        wallpapersStatus: wallpapersStatus ?? this.wallpapersStatus,
        launchUrlStatus: launchUrlStatus ?? this.launchUrlStatus,
        limit: limit ?? this.limit,
        wallpapers: wallpapers ?? this.wallpapers,
      );

  @override
  List<Object?> get props => [
        wallpapersStatus,
        launchUrlStatus,
        limit,
        wallpapers,
      ];
}
