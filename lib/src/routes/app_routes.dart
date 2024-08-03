import 'package:webview_news_app/src/ui/utility/app_exports.dart';

class AppRoutes {

  static List<GetPage> getPages = [
    GetPage(
      name: AppPages.splashView,
      page: () => const SplashView(),
    ),
    GetPage(
      name: AppPages.homeView,
      page: () => const HomeView(),
    ),
    GetPage(
      name: AppPages.newspaperView,
      page: () => const NewsPaperView(),
    ),
  ];

}
