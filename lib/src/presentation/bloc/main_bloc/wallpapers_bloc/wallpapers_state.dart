part of 'wallpapers_bloc.dart';

final class WallpapersState extends Equatable {
  const WallpapersState({
    this.wallpapers = const [],
    this.wallpapersStatus = BlocStatus.initial,
    this.launchUrlStatus = BlocStatus.initial,
  });

  final BlocStatus wallpapersStatus;
  final BlocStatus launchUrlStatus;
  final List<WallpapersResponse> wallpapers;

  WallpapersState copyWith({
    BlocStatus? wallpapersStatus,
    BlocStatus? launchUrlStatus,
    List<WallpapersResponse>? wallpapers,
  }) =>
      WallpapersState(
        wallpapersStatus: wallpapersStatus ?? this.wallpapersStatus,
        launchUrlStatus: launchUrlStatus ?? this.launchUrlStatus,
        wallpapers: wallpapers ?? this.wallpapers,
      );

  @override
  List<Object?> get props => [
        wallpapersStatus,
    launchUrlStatus,
        wallpapers,
      ];
}
