import 'package:webview_news_app/src/ui/utility/app_exports.dart';

class NewsBindings extends Bindings {

  @override
  void dependencies() {
    Get.lazyPut(
      () => NewsHomeController(),
    );
  }

}
