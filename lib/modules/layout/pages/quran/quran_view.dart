import 'package:flutter/material.dart';
import 'package:islami_app/core/constants/app_assets.dart';
import 'package:islami_app/core/theme/color_palette.dart';

class QuranView extends StatelessWidget {
  const QuranView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.quranBackground),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(AppAssets.islamiLogo),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: TextField(
              cursorColor: ColorPalette.primaryColor,
              decoration: InputDecoration(
                hintText: "Sura Name",
                hintStyle: theme.textTheme.bodyLarge,
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ImageIcon(
                    AssetImage(AppAssets.quranIcon),
                    color: ColorPalette.primaryColor,
                  ),
                ),

                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: ColorPalette.primaryColor),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: ColorPalette.primaryColor),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 5.0,
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text("Most Recently", style: theme.textTheme.bodyLarge),
            ),
          ),
        ],
      ),
    );
  }
}
