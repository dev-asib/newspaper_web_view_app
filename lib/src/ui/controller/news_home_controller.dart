import 'package:webview_news_app/src/ui/utility/app_exports.dart';

class NewsHomeController extends GetxController {

  final List<Map<String, String>> _newspaperInfo = [
    {'logo': Assetspaths.prothomAlo, 'url': NewspaperUrls.prothomAlo},
    {'logo': Assetspaths.theSun, 'url': NewspaperUrls.theSun},
    {'logo': Assetspaths.reuters, 'url': NewspaperUrls.reuters},
    {'logo': Assetspaths.usaToday, 'url': NewspaperUrls.usaToday},
  ];

  List<Map<String, String>> get newspaperInfo => _newspaperInfo;

}
