part of 'agent_detail_page_part.dart';

class AgentDetailPage extends StatefulWidget {
  const AgentDetailPage({super.key, required this.uuid});

  final String uuid;

  @override
  State<AgentDetailPage> createState() => _AgentDetailPageState();
}

class _AgentDetailPageState extends State<AgentDetailPage>
    with AgentDetailMixin {
  @override
  Widget build(BuildContext context) =>
      BlocBuilder<AgentDetailBloc, AgentDetailState>(
        bloc: _bloc,
        buildWhen: (p, c) => p != c,
        builder: (_, state) => Scaffold(
          backgroundColor: context.colorScheme.primary,
          extendBody: true,
          extendBodyBehindAppBar: true,
          body: state.agentDetailStatus == BlocStatus.loading
              ? Center(
                  child: StaggeredDotsWave(size: 50,color: context.colorScheme.secondary,)
                )
              : CustomScrollView(
                  slivers: [
                    AgentDetailAppBar(
                        backgroundColor:
                            state.agentDetail?.backgroundGradientColors?[1] ??
                                'FF4655FF',
                        image: state.agentDetail?.fullPortrait ?? 'null'),
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.all(32),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ...agentDetailInfo(
                                agentDetail:
                                    state.agentDetail ?? AgentDetailData()),
                            16.g,
                            Text(
                              'abilities'.tr,
                              style: AppTypography.pRegular.copyWith(
                                  color: context.colorScheme.secondary),
                            ),
                            12.g,
                            ...agentDetailAbilities(
                              agentDetail:
                                  state.agentDetail ?? AgentDetailData(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
        ),
      );
}
