part of 'agents_page_part.dart';

class AgentsPage extends StatefulWidget {
  const AgentsPage({super.key});

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
              SliverAppBar(
                pinned: true,
                leading: IconButton(
                  onPressed: () {
                    context.pop();
                  },
                  icon: SvgPicture.asset(AppIcons.backArrow),
                ),
                title: Text(
                  'agents'.tr,
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  List.generate(
                    state.agents.length,
                    (index) => Text(
                      state.agents[index].displayName ?? 'null',
                      style: AppTypography.h1Bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
