part of 'sprays_page_part.dart';

class SpraysPage extends StatefulWidget {
  const SpraysPage({super.key});

  @override
  State<SpraysPage> createState() => _SpraysPageState();
}

class _SpraysPageState extends State<SpraysPage> {
  @override
  Widget build(BuildContext context) => BlocBuilder<SpraysBloc, SpraysState>(
        buildWhen: (p, c) => p != c,
        builder: (context, state) => Scaffold(
          backgroundColor: context.colorScheme.primary,
          body: CustomScrollView(
            slivers: [
              CustomSliverAppBar(
                title: 'sprays'.tr,
              ),
              SliverPadding(
                padding: AppUtils.kPaddingAll12,
                sliver: SliverGrid(
                  delegate: SliverChildListDelegate(
                    (state.sprays.isEmpty &&
                            state.spraysStatus == BlocStatus.loading)
                        ? agentsListShimmer(context)
                        : List.generate(
                            state.sprays.length,
                            (index) => DecoratedBox(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: context.colorScheme.secondary,
                                ),
                              ),
                              child: Padding(
                                padding: AppUtils.kPaddingAll8,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(state.sprays[index].displayName ?? 'null',style: AppTypography.st2Regular,textAlign: TextAlign.center,),
                                    10.g,
                                    CachedNetworkImage(
                                      imageUrl: state.sprays[index].fullTransparentIcon ?? 'null',
                                      placeholder: (context, url) => Center(
                                        child: StaggeredDotsWave(
                                          size: 50,
                                          color: context.colorScheme.secondary,
                                        ),
                                      ),
                                      width: 160.w,
                                      height: 160.w,
                                      fadeOutDuration: const Duration(milliseconds: 300),
                                      fit: BoxFit.contain,
                                      errorWidget: (context, url, error) => Center(
                                        child: Icon(
                                          Icons.image_not_supported_outlined,
                                          color: colorLightScheme.secondary,
                                          size: 50.w,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                  ),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 14,
                    crossAxisSpacing: 14,
                    childAspectRatio: 0.7,
                  ),
                ),
              )
            ],
          ),
        ),
      );
}
