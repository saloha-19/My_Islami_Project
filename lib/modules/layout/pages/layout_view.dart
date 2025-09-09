import 'package:flutter/material.dart';
import 'package:islami_app/core/constants/app_assets.dart';
import 'package:islami_app/core/theme/color_palette.dart';
import 'package:islami_app/modules/layout/pages/hadith/hadith_view.dart';

import 'quran/quran_view.dart';
import 'radio/radio_view.dart';
import 'tasbeeh/tasbeh_view.dart';
import 'time/time_view.dart';

class LayoutView extends StatefulWidget {
  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int currentIndex = 0;

  List<Widget> screens = [
    QuranView(),
    HadithView(),
    TasbehView(),
    RadioView(),
    TimeView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },

        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppAssets.quranIcon)),
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: ImageIcon(AssetImage(AppAssets.quranIcon)),
            ),
            label: "Quran",
            backgroundColor: ColorPalette.primaryColor,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppAssets.hadithIcon)),
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: ImageIcon(AssetImage(AppAssets.hadithIcon)),
            ),
            label: "Hadith",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppAssets.tasbehIcon)),
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: ImageIcon(AssetImage(AppAssets.tasbehIcon)),
            ),
            label: "Tasbeh",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppAssets.radioIcon)),
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: ImageIcon(AssetImage(AppAssets.radioIcon)),
            ),
            label: "Radio",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppAssets.timeIcon)),
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: ImageIcon(AssetImage(AppAssets.timeIcon)),
            ),
            label: "Time",
          ),
        ],
      ),
    );
  }
}
