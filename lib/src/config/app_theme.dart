// 어플리케이션 테마 설정
// 참고: https://api.flutter.dev/flutter/material/ThemeData-class.html

import 'package:chohyunkwon/src/constant/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  /// 밝은 테마 (Light theme)
  static ThemeData buildLightTheme(BuildContext context) {
    final base = ThemeData.light();

    return base.copyWith(
      // 색상 스키마
      colorScheme: ColorScheme.fromSwatch(
        // 주 스워치
        primarySwatch: _createMaterialColor(AppColors.brand),
      ),
      primaryColor: AppColors.brand,
      // 스캐폴드 배경색
      scaffoldBackgroundColor: AppColors.white50,
    );
  }

  // TODO 어두운 테마 (Dark theme)


  // Color에서 MaterialColor 만들기
  static MaterialColor _createMaterialColor(Color color) {
    List<double> strengths = <double>[.05];
    Map<int, Color> swatch = <int, Color>{};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }

    for (double strength in strengths ) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }

    return MaterialColor(color.value, swatch);
  }
}
