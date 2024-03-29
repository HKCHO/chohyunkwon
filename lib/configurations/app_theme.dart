// 어플리케이션 테마 설정
// 참고: https://api.flutter.dev/flutter/material/ThemeData-class.html

import 'package:chohyunkwon/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  /// 밝은 테마 (Light theme)
  static ThemeData buildLightTheme(BuildContext context) {
    final base = ThemeData.light();

    return base.copyWith(
      appBarTheme: AppBarTheme(
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
        ),  // primaryColor가 어두운 계열 색상이라 statusbar brightness도 dark로 세팅
        shadowColor: Colors.transparent,
        // centerTitle: false,
        foregroundColor: Colors.black87,
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBarTheme: _buildLightBottomNavigationBarTheme(),
      // 색상 스키마
      colorScheme: ColorScheme.fromSwatch(
        // 주 스워치
        primarySwatch: _createMaterialColor(AppColors.brand),
      ),
      // 주 색상
      primaryColor: AppColors.brand,
      // 텍스트 테마
      textTheme: _buildLightTextTheme(base.textTheme),
      // 스캐폴드 배경색
      scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
    );
  }

  static SystemUiOverlayStyle buildLightSystemUiOverlayStyle() {
    return SystemUiOverlayStyle(
      // statusBarColor: Color.fromRGBO(AppColors.brand.red, AppColors.brand.green, AppColors.brand.blue, 0.65),
      statusBarColor: AppColors.scaffoldBackgroundColor,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    );
  }

  // TODO 어두운 테마 (Dark theme)

  // 밝은 텍스트 테마 만들기
  // 기본 텍스트 테마 참고: https://api.flutter.dev/flutter/material/TextTheme-class.html
  static TextTheme _buildLightTextTheme(TextTheme base) {
    return base.copyWith(
      headline1: GoogleFonts.notoSans(
        fontWeight: FontWeight.w200,
        fontSize: 96,
        letterSpacing: -1.5,
        color: AppColors.textDefault,
      ),
      headline6: GoogleFonts.notoSans(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        letterSpacing: 0.15,
        color: AppColors.textDefault,
      ),
      subtitle1: GoogleFonts.notoSans(
        fontWeight: FontWeight.normal,
        fontSize: 16,
        letterSpacing: 0.15,
        color: AppColors.textDefault,
      ),
      subtitle2: GoogleFonts.notoSans(
        fontWeight: FontWeight.bold,
        fontSize: 14,
        letterSpacing: 0.1,
        color: AppColors.textDefault,
      ),
      bodyText1: GoogleFonts.notoSans(
        fontWeight: FontWeight.normal,
        fontSize: 18,
        letterSpacing: 0.2,
        color: AppColors.textDefault,
      ),
      bodyText2: GoogleFonts.notoSans(
        fontWeight: FontWeight.normal,
        fontSize: 14,
        letterSpacing: -0.05,
        color: AppColors.textDefault,
      ),
    );
  }

  // BottomNavigation 밝은 테마 만들기
  static BottomNavigationBarThemeData _buildLightBottomNavigationBarTheme() {
    return BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: AppColors.contentColorLightTheme.withOpacity(0.7),
      unselectedItemColor: AppColors.contentColorLightTheme.withOpacity(0.32),

      selectedIconTheme: IconThemeData(color: AppColors.brand),

      showSelectedLabels: true,
      selectedLabelStyle: TextStyle(
        fontSize: 10,
        color: AppColors.brand
      ),

      showUnselectedLabels: false,
      unselectedLabelStyle: TextStyle(
        fontSize: 10,
      ),

      type: BottomNavigationBarType.fixed,
    );
  }

  // Color에서 MaterialColor 만들기
  static MaterialColor _createMaterialColor(Color color) {
    List<double> strengths = <double>[.05];
    Map<int, Color> swatch = <int, Color>{};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }

    for (double strength in strengths) {
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

  /// 텍스트 크기가 시스템 텍스트 스케일을 따라가는지 여부
  static bool fixedFontScale = true;
}
