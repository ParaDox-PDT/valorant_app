part of 'agents_page_part.dart';

class AgentsPage extends StatefulWidget {
  const AgentsPage({
    super.key,
  });

  @override
  State<AgentsPage> createState() => _AgentsPageState();
}

class _AgentsPageState extends State<AgentsPage> {
  @override
  Widget build(BuildContext context) => BlocBuilder<AgentsBloc, AgentsState>(
        buildWhen: (p, c) => p != c,
        builder: (_, state) => Scaffold(
          backgroundColor: context.theme.primaryColor,
          body: CustomScrollView(
            slivers: [
              CustomSliverAppBar(
                title: 'agents'.tr,
              ),
              SliverPadding(
                padding: AppUtils.kPaddingAll16,
                sliver: SliverGrid(
                  delegate: SliverChildListDelegate(
                    state.agents.isEmpty && state.status == BlocStatus.loading
                        ? agentsListShimmer(context)
                        : List.generate(
                            state.agents.length,
                            (index) {
                              final AgentsData agent = state.agents[index];
                              if (index.isEven) {
                                return SlideInLeft(
                                    child: AgentsItem(agent: agent));
                              } else {
                                return SlideInRight(
                                    child: AgentsItem(agent: agent));
                              }
                            },
                          ),
                  ),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 152.w / 260.h,
                      crossAxisSpacing: 26.w,
                      mainAxisSpacing: 32.h,
                      crossAxisCount: 2),
                ),
              )
            ],
          ),
        ),
      );
}
