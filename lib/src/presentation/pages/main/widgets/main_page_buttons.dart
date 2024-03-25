part of '../main_page_part.dart';

class MainPageButtons extends StatelessWidget {
  const MainPageButtons(
      {super.key,
      required this.titles,
      required this.images,
      required this.onTaps});

  final List<String> titles;
  final List<String> images;
  final List<VoidCallback> onTaps;

  @override
  Widget build(BuildContext context) => Expanded(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: AppUtils.kPaddingAll16,
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  [
                    ...List.generate(
                      titles.length,
                      (index) {
                        if (index == 0) {
                          return SlideInDown(
                            child: MainPageButton(
                              title: titles[index],
                              image: images[index],
                              onTap: onTaps[index],
                            ),
                          );
                        } else if (index.isEven) {
                          return SlideInLeft(
                            child: MainPageButton(
                              title: titles[index],
                              image: images[index],
                              onTap: onTaps[index],
                            ),
                          );
                        } else {
                          return SlideInRight(
                            child: MainPageButton(
                              title: titles[index],
                              image: images[index],
                              onTap: onTaps[index],
                            ),
                          );
                        }
                      },
                    ),
                    SlideInUp(
                      child: MainPageWallpapersButton(
                        onTap: () {
                          context.push(Routes.wallpapers);
                        },
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      );
}
