part of '../weapons_page_part.dart';

class WeaponsListInnerItem extends StatelessWidget {
  const WeaponsListInnerItem(
      {super.key, required this.title, required this.image, required this.uuid});

  final String title;
  final String image;
  final String uuid;

  @override
  Widget build(BuildContext context) => Column(
        children: [
          20.g,
          Text(title),
          10.g,
          Hero(
            tag: '${AppKeys.weaponDetailImage}_$uuid',
            child: CachedNetworkImage(
              imageUrl: image,
              height: 80.h,
              fit: BoxFit.fitWidth,
              errorWidget: (context, url, error) => Center(
                child: Icon(
                  Icons.error,
                  color: colorLightScheme.secondary,
                  size: 40.w,
                ),
              ),
            ),
          )
        ],
      );
}
