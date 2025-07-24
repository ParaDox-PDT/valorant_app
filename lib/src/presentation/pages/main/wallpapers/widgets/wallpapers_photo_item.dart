part of '../wallpapers_page_part.dart';

class WallpapersPhotoItem extends StatelessWidget {
  const WallpapersPhotoItem({super.key, required this.imageUrl, this.onTap});

  final String imageUrl;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) => SlideInUp(
    from: 200,
    child: SlideInLeft(
      from: 200,
          child: Padding(
            padding: AppUtils.kPaddingVertical8,
            child: Column(
              children: [
                DecoratedBox(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: context.colorScheme.secondary,
                    ),
                  ),
                  child: Padding(
                    padding: AppUtils.kPaddingAll4,
                    child: InkWell(
                      onTap: () {
                        showPhotoViewDialog(context: context, url: imageUrl);
                      },
                      child: CachedNetworkImage(
                        imageUrl: imageUrl,
                        width: double.infinity,
                        fit: BoxFit.cover,


                      ),
                    ),
                  ),
                ),
                DecoratedBox(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: context.colorScheme.secondary,
                    ),
                  ),
                  child: InkWell(
                    onTap: onTap,
                    splashColor: context.colorScheme.secondary.withOpacity(0.3),
                    highlightColor:
                        context.colorScheme.secondary.withOpacity(0.3),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 3),
                        child: Icon(
                          Icons.download_sharp,
                          color: context.colorScheme.secondary,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );
}
