part of '../map_detail_page_part.dart';

class MapDetailRichText extends StatelessWidget {
  const MapDetailRichText({super.key, required this.title, required this.text});

  final String title;
  final String text;

  @override
  Widget build(BuildContext context) => SlideInLeft(
    child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: RichText(
                text: TextSpan(
                  text: title,
                  style: AppTypography.t3Regular
                      .copyWith(color: context.colorScheme.secondary),
                  children: [
                    TextSpan(text: text, style: AppTypography.t3Regular),
                  ],
                ),
              ),
            ),
            Divider(
              color: context.colorScheme.secondary,
            ),
          ],
        ),
  );
}
