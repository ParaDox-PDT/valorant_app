part of '../agent_detail_page_part.dart';

class AgentDetailAppBar extends StatelessWidget {
  const AgentDetailAppBar(
      {super.key, required this.backgroundColor, required this.image});

  final String backgroundColor;

  final String image;

  @override
  Widget build(BuildContext context) => SliverToBoxAdapter(
        child: SizedBox(
          height: context.isMobile ? 450.h : 600.h,
          child: Stack(
            children: [
              CustomTriangle(
                color: hexToColor(backgroundColor),
              ),
              CustomScrollView(
                physics: const NeverScrollableScrollPhysics(),
                slivers: [
                  SliverAppBar(
                    pinned: true,
                    scrolledUnderElevation: 0,
                    backgroundColor: Colors.transparent,
                    systemOverlayStyle: const SystemUiOverlayStyle(
                        statusBarColor: Colors.transparent),
                    leading: IconButton(
                      onPressed: () {
                        context.pop();
                      },
                      icon: SvgPicture.asset(AppIcons.backArrow),
                    ),
                    title: Text('agent_detail'.tr),
                    bottom: PreferredSize(
                      preferredSize: Size.fromHeight(360.h),
                      child: CachedNetworkImage(
                        imageUrl: image,
                        fadeInDuration: const Duration(milliseconds: 300),
                        fadeOutDuration: const Duration(milliseconds: 300),
                        height: 360.h,
                        fit: BoxFit.cover,
                        errorWidget: (context, url, error) => Center(
                          child: Icon(
                            Icons.image_not_supported_outlined,
                            color: colorLightScheme.secondary,
                            size: 50.w,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      );
}
