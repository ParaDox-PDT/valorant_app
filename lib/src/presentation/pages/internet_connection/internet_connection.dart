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
          backgroundColor: Colors.white,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(36),
                child: Image.network(
                  'https://static.vecteezy.com/system/resources/previews/002/737/785/original/no-internet-connection-illustration-concept-free-vector.jpg',
                  fit: BoxFit.fitWidth,
                ),
              ),
              const Text(
                'Нет доступа к интернету',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                'Проверьте подключение к интернету',
                style: TextStyle(
                  color: Color(0xff818C99),
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          bottomNavigationBar: SafeArea(
            minimum: const EdgeInsets.all(16),
            child: ElevatedButton(
              child: const Text('Попробовать снова'),
              onPressed: () async {
                setState(() {
                  isLoading = true;
                });
                await Future<void>.delayed(const Duration(milliseconds: 300));
                final isConnected = await networkInfo.isConnected;
                setState(() {
                  isLoading = false;
                });
                if (isConnected) {
                  if (!mounted) return;
                  Navigator.of(context).pop();
                }
              },
            ),
          ),
        ),
      );
}
