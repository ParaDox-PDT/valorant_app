part of '../wallpapers_page_part.dart';

List<Widget> wallpapersShimmer({required BuildContext context}) =>
    List.generate(
      7,
      (index) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(color: context.colorScheme.secondary),
          ),
          child: const CustomShimmer(height: 200, width: double.infinity),
        ),
      ),
    );

List<Widget> wallpapersPhotos(
        {required BuildContext context,
        required List<WallpapersResponse> wallpapers,
        required WallpapersBloc bloc}) =>
    List.generate(
      wallpapers.length,
      (index) => WallpapersPhotoItem(
        imageUrl: wallpapers[index].imageUrl ?? 'null',
        onTap: () async {
          await FlutterDownloader.enqueue(
            url: wallpapers[index].imageUrl ?? 'null',
            saveInPublicStorage: true,
            savedDir:
                bloc.state.directory?.path ?? '/storage/emulated/0/Download',
          );
        },
      ),
    );
