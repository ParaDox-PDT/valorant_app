part of 'weapons_page_part.dart';

class WeaponsPage extends StatefulWidget {
  const WeaponsPage({super.key});

  @override
  State<WeaponsPage> createState() => _WeaponsPageState();
}

class _WeaponsPageState extends State<WeaponsPage> {
  @override
  Widget build(BuildContext context) => BlocBuilder<WeaponsBloc, WeaponsState>(
        buildWhen: (p, c) => p != c,
        builder: (_, state) => Scaffold(
          backgroundColor: context.colorScheme.primary,
          body: CustomScrollView(
            slivers: [
              CustomSliverAppBar(
                title: 'weapons'.tr,
              ),
            ],
          ),
        ),
      );
}
