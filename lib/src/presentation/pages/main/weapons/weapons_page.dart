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
          appBar: AppBar(
            title: const Text('Weapons Page'),
          ),
          body: Column(
            children: [
              ...List.generate(
                state.weaponsData.length ?? 0,
                (index) => Text(
                  state.weaponsData[index].displayName ?? 'null',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      );
}
