part of '../weapon_detail_page_part.dart';

class WeaponDetailAppBar extends StatelessWidget {
  const WeaponDetailAppBar(
      {super.key, required this.image, required this.uuid});

  final String image;
  final String uuid;

  @override
  Widget build(BuildContext context) => SliverToBoxAdapter(
        child: SizedBox(
          height: context.isMobile ? 450.h : 600.h,
          child: Stack(
            children: [
              CustomTriangle(
                color: context.colorScheme.secondary,
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
                    title: Text('weapon_detail'.tr),
                    bottom: PreferredSize(
                      preferredSize: Size.fromHeight(200.h),
                      child: Hero(
                        tag: '${AppKeys.weaponDetailImage}_$uuid',
                        child: CachedNetworkImage(
                          imageUrl: image,
                          fadeInDuration: const Duration(milliseconds: 300),
                          fadeOutDuration: const Duration(milliseconds: 300),
                          height: 200.h,
                          width: MediaQuery.sizeOf(context).width-32.w,
                          fit: BoxFit.contain,
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
                  ),
                ],
              )
            ],
          ),
        ),
      );
}
