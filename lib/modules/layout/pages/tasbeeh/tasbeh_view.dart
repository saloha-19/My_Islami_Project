import 'package:flutter/material.dart';
import 'package:islami_app/core/constants/app_assets.dart';

class TasbehView extends StatefulWidget {
  const TasbehView({super.key});

  @override
  State<TasbehView> createState() => _TasbehViewState();
}

class _TasbehViewState extends State<TasbehView> {
  int count = 0;
  int phraseIndex = 0;
  List<String> tasbeehPhrases = [
    'سبحان الله',
    'الحمد لله',
    'لا إله إلا الله',
    'الله أكبر',
  ];

  void incrementCount() {
    setState(() {
      count++;
      if (count % 30 == 0) {
        phraseIndex = (phraseIndex + 1) % tasbeehPhrases.length;
        count = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.tasbihBackground),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Image.asset(AppAssets.islamiLogo),
          const SizedBox(height: 20.0),
          Text(
            'سَبِّحِ اسْمَ رَبِّكَ الأعلى',
            style: theme.textTheme.titleLarge?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 30,
            ),
          ),
          const SizedBox(height: 40),
          Expanded(
            child: Center(
              child: GestureDetector(
                onTap: incrementCount,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      AppAssets.Sebha,
                      width: 350,
                      height: 350,
                    ),
                    Positioned(
                      top: -15,
                      child: Image.asset(
                        AppAssets.SebhaTail,
                        width: 80,
                        height: 86,
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          tasbeehPhrases[phraseIndex],
                          style: theme.textTheme.titleLarge?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 28,
                          ),
                        ),
                        const SizedBox(height: 15),
                        Text(
                          '$count',
                          style: const TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}