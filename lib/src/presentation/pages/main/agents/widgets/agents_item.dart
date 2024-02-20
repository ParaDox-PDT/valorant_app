part of '../agents_page_part.dart';

class AgentsItem extends StatelessWidget {
  const AgentsItem({super.key, required this.agent});
  final AgentsData agent;

  @override
  Widget build(BuildContext context) =>DecoratedBox(
    decoration: BoxDecoration(
      border: Border.all(
          color: context.colorScheme.secondary),
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: List.generate(
          agent.backgroundGradientColors?.length ?? 0,
              (index) => hexToColor(
              agent.backgroundGradientColors![index]),
        ),
      ),
    ),
    child: Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: (){},
        splashColor:context.colorScheme.secondary.withOpacity(0.5),
        highlightColor: context.colorScheme.secondary.withOpacity(0.5),
        child: Padding(
          padding: AppUtils.kPaddingAll16,
          child: Column(
            children: [
              Text(
                agent.displayName ?? 'null',
                style: AppTypography.st2Regular
                    .copyWith(color: Colors.white),
              ),
              8.g,
              Stack(
                children: [
                  AgentsImage(image: agent.background ?? 'null',isBackground: true),
                  AgentsImage(image: agent.fullPortrait ?? 'null'),

                ],
              )
            ],
          ),
        ),
      ),
    ),
  );
}
