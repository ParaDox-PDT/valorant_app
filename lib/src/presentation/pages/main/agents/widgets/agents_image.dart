part of '../agents_page_part.dart';

class AgentsImage extends StatelessWidget {
  const AgentsImage({super.key, required this.image,this.isBackground = false});

  final String image;
  final bool isBackground ;

  @override
  Widget build(BuildContext context) => CachedNetworkImage(
    imageUrl:image,
    width: 130.w,
    height: 200.h,
    fit: BoxFit.cover,
    fadeInDuration:isBackground ? const Duration(milliseconds: 100) : const Duration(milliseconds: 300),
    fadeOutDuration:isBackground ? const Duration(milliseconds: 100) : const Duration(milliseconds: 300),
    errorWidget: (context, url, error) =>
        Center(
          child: Icon(
            Icons.error,
            color: colorLightScheme.secondary,
            size: 40.w,
          ),
        ),
  );
}
