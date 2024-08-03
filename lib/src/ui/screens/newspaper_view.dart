import 'package:webview_news_app/src/ui/utility/app_exports.dart';

class NewsPaperView extends StatelessWidget {
  const NewsPaperView({super.key});

  @override
  Widget build(BuildContext context) {
    final String argument = Get.arguments;
    return Scaffold(
      body: SafeArea(
        child: InAppWebView(
          initialUrlRequest: URLRequest(
            url: WebUri(argument),
          ),
        ),
      ),
    );
  }
}
