part of 'main_page_part.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with MainPageMixin {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: context.theme.primaryColor,
        appBar: AppBar(
          toolbarHeight: 0,
        ),
        body: Column(
          children: [
            Text('guide'.tr, style: AppTypography.t1Regular),
            MainPageButtons(
              titles: titles,
              images: images,
              onTaps: onTaps,
            )
          ],
        ),
      );
}
