import 'package:flutter/material.dart';
import 'package:islami_app/core/constants/app_routes_name.dart';
import 'package:islami_app/core/theme/app_theme_manager.dart';
import 'package:islami_app/modules/layout/pages/layout_view.dart';
import 'package:islami_app/modules/layout/pages/quran/quran_details_view.dart';
import 'package:islami_app/modules/splash/pages/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppThemeManager.AppThemeData(),
      initialRoute: AppRoutesName.initial,
      routes: {
        AppRoutesName.initial: (context) => const SplashView(),
        AppRoutesName.layoutRoute: (context) => const LayoutView(),
        AppRoutesName.quranDetailsView: (context) => const QuranDetailsView(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
