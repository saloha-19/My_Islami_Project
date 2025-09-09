import 'package:flutter/material.dart';
import 'package:islami_app/core/constants/app_assets.dart';

class TimeView extends StatelessWidget {
  const TimeView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.timeBackground),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
