import 'package:webview_news_app/src/ui/utility/app_exports.dart';

class AppThemes {

  static ThemeData lightThemeData() {
    return ThemeData(
      brightness: Brightness.light,
      appBarTheme: appBarTheme(),
    );
  }


  static ThemeData darkThemeData() {
    return ThemeData(
      brightness: Brightness.dark,
      appBarTheme: appBarTheme(),
    );
  }

  static AppBarTheme appBarTheme() {
    return const AppBarTheme(
      backgroundColor: AppColors.appBarBackgroundColor,
      foregroundColor: AppColors.white,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
      ),
    );
  }

}
