part of 'splash_page_part.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    context.read<SplashBloc>().add(const SplashEvent());
  }

  @override
  Widget build(BuildContext context) => BlocListener<SplashBloc, SplashState>(
        listener: (context, state) {
          if (state.isTimerFinished) {
            context.pushReplacementNamed(Routes.home);
          }
        },
        child: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: Scaffold(
            backgroundColor: context.theme.primaryColor,
            appBar: AppBar(
              toolbarHeight: 0,
            ),
            body: DecoratedBox(
              decoration: BoxDecoration(
                border:
                    Border.all(width: 7, color: context.colorScheme.secondary),
              ),
              child: SizedBox.expand(
                child: Center(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.symmetric(
                        vertical: BorderSide(
                            width: 16,
                            color: context.theme.colorScheme.secondary),
                      ),
                    ),
                    child:  SizedBox(
                      width: double.infinity,
                      height: 300.h,
                      child: Center(
                        child: Image(
                          image:const AssetImage(AppImages.logo),
                          fit: BoxFit.cover,
                          width: 235.w,
                          height: 154.h,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}
