import 'package:webview_news_app/src/ui/utility/app_exports.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
      const Duration(seconds: 5),
      () => Get.offAndToNamed(AppPages.homeView),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                Assetspaths.splashLottie,
                height: SizeConfig.screenWidth! / 1,
                width: SizeConfig.screenWidth! / 1,
              ),
              const CircularProgressIndicator(
                backgroundColor: Colors.white,
              ),
              const SizedBox(height: 20),
              const Text(
                "Loading....",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
