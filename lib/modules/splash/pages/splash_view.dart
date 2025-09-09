import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami_app/core/constants/app_assets.dart';
import 'package:islami_app/core/constants/app_routes_name.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, AppRoutesName.layoutRoute);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppAssets.splashBackground,
      height: double.infinity,
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }
}
