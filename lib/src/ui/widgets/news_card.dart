import 'package:webview_news_app/src/ui/utility/app_exports.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({
    super.key,
    required this.newspaperLogo,
    required this.newspaperUrl,
  });

  final String newspaperLogo;
  final String newspaperUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 4.0,
      ),
      child: InkWell(
        onTap: () {
          Get.toNamed(
            AppPages.newspaperView,
            arguments: newspaperUrl,
          );
        },
        child: Card(
          elevation: 4,
          child: Container(
            height: SizeConfig.screenWidth! / 4,
            decoration: BoxDecoration(
              color: AppColors.cardColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: SvgPicture.asset(newspaperLogo),
          ),
        ),
      ),
    );
  }
}
