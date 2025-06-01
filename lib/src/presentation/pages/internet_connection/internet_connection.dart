part of 'internet_connection_part.dart';

class InternetConnectionPage extends StatefulWidget {
  const InternetConnectionPage({super.key});

  @override
  State<InternetConnectionPage> createState() => _InternetConnectionPageState();
}

class _InternetConnectionPageState extends State<InternetConnectionPage> {
  late bool isLoading = false;
  late Timer timer;
  late NetworkInfo networkInfo;

  @override
  void initState() {
    super.initState();
    networkInfo = sl<NetworkInfo>();
    timer = Timer.periodic(const Duration(seconds: 2), (_) {
      _updateConnectionStatus();
    });
  }

  Future<void> _updateConnectionStatus() async {
    if (await networkInfo.isConnected) {
      if (!mounted) return;
      Navigator.of(context).pop();
    }
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          backgroundColor: context.colorScheme.primary,
          body: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Lottie.asset(AppImages.noInternet2),
                  36.g,
                  const Text(
                    'Oops!',
                    style: TextStyle(
                      fontFamily: 'Bowlby One SC',
                      fontSize: 40,
                    ),
                  ),
                  14.g,
                  const Text(
                    'There is no internet connection. \nPlease check your internet connection ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFCFCFCF),
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: Padding(
            padding: AppUtils.kPaddingAll24,
            child: ZoomTapAnimation(
              onTap: () async {
                setState(() {
                  isLoading = true;
                });
                await Future<void>.delayed(const Duration(milliseconds: 300));
                final isConnected = await networkInfo.isConnected;
                setState(() {
                  isLoading = false;
                });
                if (isConnected) {
                  if (!context.mounted) return;
                  Navigator.of(context).pop();
                }
              },
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: context.colorScheme.secondary,
                ),
                child: const SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: Text(
                      'Try again',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14, color: Color(0xFFFAFAFA)),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}
