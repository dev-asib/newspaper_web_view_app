import 'package:webview_news_app/src/ui/utility/app_exports.dart';

class WebViewNewsApp extends StatefulWidget {
  const WebViewNewsApp({super.key});

  @override
  State<WebViewNewsApp> createState() => _WebViewNewsAppState();
}

class _WebViewNewsAppState extends State<WebViewNewsApp> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GetMaterialApp(
      initialRoute: AppPages.splashView,
      getPages: AppRoutes.getPages,
      initialBinding: NewsBindings(),
      theme: AppThemes.lightThemeData(),
      darkTheme: AppThemes.darkThemeData(),
      themeMode: ThemeMode.system,
    );
  }
}
