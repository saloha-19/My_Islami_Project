import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/core/constants/app_assets.dart';
import 'package:islami_app/models/hadith_data_model.dart';
import 'package:islami_app/modules/layout/pages/hadith/widgets/hadith_card_widget.dart';

class HadithView extends StatefulWidget {
  const HadithView({super.key});

  @override
  State<HadithView> createState() => _HadithViewState();
}

class _HadithViewState extends State<HadithView> {
  @override
  Widget build(BuildContext context) {
    if (hadethDataList.isEmpty) loadHadethDataFromAssets();
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,

        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.hadithBackground),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(AppAssets.islamiLogo),
            CarouselSlider(
              items: hadethDataList
                  .map((data) => HadithCardWidget(hadithDataModel: data))
                  .toList(),
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height * 0.6,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: false,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<HadithDataModel> hadethDataList = [];

  Future<void> loadHadethDataFromAssets() async {
    for (int i = 1; i <= 50; i++) {
      var content = await rootBundle.loadString('assets/files/h$i.txt');
      int titleLength = content.indexOf("\n");
      if (titleLength == -1) continue;

      String hadithTitle = content.substring(0, titleLength).trim();
      String hadithContent = content.substring(titleLength + 1).trim();

      HadithDataModel hadethDataModel = HadithDataModel(
        hadithTitle: hadithTitle,
        hadithContent: hadithContent,
      );
      hadethDataList.add(hadethDataModel);
    }

    setState(() {});
  }
}