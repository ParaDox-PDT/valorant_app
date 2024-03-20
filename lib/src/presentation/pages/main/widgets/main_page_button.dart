part of '../main_page_part.dart';

class MainPageButton extends StatelessWidget {
  const MainPageButton({super.key, required this.title, required this.image, required this.onTap});

  final String title;
  final String image;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => Padding(
    padding: kMaterialListPadding,
    child: InkWell(
      onTap: onTap,
      splashColor: context.colorScheme.secondary.withOpacity(0.3),
      highlightColor: context.colorScheme.secondary.withOpacity(0.3),
      child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(color: context.colorScheme.secondary),
            ),
            child: Padding(
              padding: AppUtils.kPaddingAll4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.w),
                      child: Text(
                        title,
                        style: AppTypography.h3Regular,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Image(
                      image: AssetImage(image),
                      width: 150.w,
                      height: 135.h,
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
            ),
          ),
    ),
  );
}
