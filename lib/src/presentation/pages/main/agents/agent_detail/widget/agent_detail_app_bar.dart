part of '../agent_detail_page_part.dart';

class AgentDetailAppBar extends StatelessWidget {
  const AgentDetailAppBar(
      {super.key, required this.backgroundColor, required this.image});

  final String backgroundColor;

  final String image;

  @override
  Widget build(BuildContext context) => SliverToBoxAdapter(
        child: SizedBox(
          height: context.isMobile?430.h :600.h,
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
                    toolbarHeight:context.isMobile?50.h : 250.h,
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
                      preferredSize: Size(double.infinity, context.isMobile?360.h :360.h),
                      child: CachedNetworkImage(
                        imageUrl: image,
                        fadeInDuration: const Duration(milliseconds: 300),
                        fadeOutDuration: const Duration(milliseconds: 300),
                        fit: BoxFit.cover,
                        errorWidget: (context, url, error) => Center(
                          child: Icon(
                            Icons.error,
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
