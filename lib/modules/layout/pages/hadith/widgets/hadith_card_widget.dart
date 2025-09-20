import 'package:flutter/material.dart';
import 'package:islami_app/core/constants/app_assets.dart';
import 'package:islami_app/core/theme/color_palette.dart';
import 'package:islami_app/models/hadith_data_model.dart';

class HadithCardWidget extends StatelessWidget {
  final HadithDataModel hadithDataModel;

  const HadithCardWidget({super.key, required this.hadithDataModel});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 15),
      decoration: BoxDecoration(
        color: ColorPalette.primaryColor,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      AppAssets.leftCornerImg,
                      height: 85,
                      width: 85,
                      color: Colors.black,
                    ),
                    Image.asset(
                      AppAssets.rightCornerImg,
                      height: 85,
                      width: 85,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),

              Image.asset(AppAssets.bottomCornerImg, color: Colors.black),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20.0),
              Text(
                hadithDataModel.hadithTitle,
                textAlign: TextAlign.center,
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 20.0),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemBuilder: (BuildContext context, int index) => Text(
                    hadithDataModel.hadithContent,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: ColorPalette.generalTextColor,
                    ),
                  ),
                  itemCount: 1,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
