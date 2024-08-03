import 'package:webview_news_app/src/ui/utility/app_exports.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("My Newspaper"),
        ),
        body: GetBuilder<NewsHomeController>(
          builder: (newsHomeController) {
            return ListView.builder(
              itemCount: newsHomeController.newspaperInfo.length,
              itemBuilder: (context, index) {
                return NewsCard(
                  newspaperLogo:
                      newsHomeController.newspaperInfo[index]['logo'] ?? '',
                  newspaperUrl:
                      newsHomeController.newspaperInfo[index]['url'] ?? '',
                );
              },
            );
          },
        ),
      ),
    );
  }
}
