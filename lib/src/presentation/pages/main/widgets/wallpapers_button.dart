part of '../main_page_part.dart';

class MainPageWallpapersButton extends StatelessWidget {
  const MainPageWallpapersButton({super.key, required this.onTap});
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => Padding(
    padding: kMaterialListPadding,
    child: ZoomTapAnimation(
      onTap: onTap,
      child: DecoratedBox(
        decoration: BoxDecoration(
          border:
          Border.all(color: context.colorScheme.secondary),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
           const Image(
              image: AssetImage(AppImages.wallpapers),
              fit: BoxFit.cover,
            ),
            Text(
              'wallpapers'.tr,
              style: AppTypography.h2Regular,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    ),
  );
}
