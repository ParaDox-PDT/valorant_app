part of 'detail_pages_info_item_part.dart';

class DetailPagesInfoItem extends StatelessWidget {
  const DetailPagesInfoItem(
      {super.key,
      required this.title,
      this.image = '',
      required this.text,
      this.isRole = false});

  final String title;
  final String image;
  final String text;
  final bool isRole;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (isRole)
              Row(
                children: [
                  Text(
                    '$title:',
                    style: AppTypography.st2Regular
                        .copyWith(color: context.colorScheme.secondary),
                  ),
                  const Spacer(),
                  if (image.isNotEmpty)
                    CachedNetworkImage(
                      imageUrl: image,
                      width: 15.w,
                      height: 15.w,
                      fit: BoxFit.cover,
                      errorWidget: (context, url, error) => Center(
                        child: Icon(
                          Icons.image_not_supported_outlined,
                          color: colorLightScheme.secondary,
                          size: 15.w,
                        ),
                      ),
                    ),
                  6.g,
                  Text(
                    text,
                    style: AppTypography.pRegular,
                  )
                ],
              )
            else
              RichText(
                text: TextSpan(
                  text: '$title: ',
                  style: AppTypography.pRegular
                      .copyWith(color: context.colorScheme.secondary),
                  children: [
                    TextSpan(
                      text: text,
                      style: AppTypography.pRegular,
                    )
                  ],
                ),
              ),
            6.g,
            const Divider()
          ],
        ),
      );
}
