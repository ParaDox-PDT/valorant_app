part of '../agent_detail_page_part.dart';

class AgentDetailAbilitiesItem extends StatelessWidget {
  const AgentDetailAbilitiesItem(
      {super.key,
      required this.displayName,
      required this.slot,
      required this.icon,
      required this.description});

  final String displayName;
  final String slot;
  final String icon;
  final String description;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(vertical: 6),
    child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(
              color: context.colorScheme.secondary,
            ),
          ),
          child: Padding(
            padding: AppUtils.kPaddingHor16Ver12,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  displayName,
                  style: AppTypography.pRegular
                      .copyWith(color: context.colorScheme.secondary),
                ),
                12.g,
                Row(
                  children: [
                    CachedNetworkImage(
                      imageUrl: icon,
                      width: 35.w,
                      height: 35.w,
                      fit: BoxFit.cover,
                      placeholder: (context, url) =>
                          Center(
                            child: StaggeredDotsWave(
                              size: 35.w,
                              color: context
                                  .colorScheme.secondary,
                            ),
                          ),
                      fadeOutDuration: const Duration(milliseconds: 300),
                      errorWidget: (context, url, error) => Center(
                        child: Icon(
                          Icons.image_not_supported_outlined,
                          color: colorLightScheme.secondary,
                          size: 35.w,
                        ),
                      ),
                    ),
                    10.g,
                    RichText(
                      text: TextSpan(
                        text: '${'slot'.tr}: ',
                        style: AppTypography.pRegular.copyWith(
                            fontSize: 10, color: context.colorScheme.secondary),
                        children: [
                          TextSpan(
                            text: slot,
                            style: AppTypography.pRegular.copyWith(fontSize: 10),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                12.g,
                RichText(
                  text: TextSpan(
                    text: '${'description'.tr}: ',
                    style: AppTypography.pRegular.copyWith(
                        fontSize: 10, color: context.colorScheme.secondary),
                    children: [
                      TextSpan(
                        text: description,
                        style: AppTypography.pRegular.copyWith(fontSize: 10),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
  );
}
