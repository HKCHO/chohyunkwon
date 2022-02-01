
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:chohyunkwon/configurations/app_theme.dart';
import 'package:chohyunkwon/screens/home/home_screen.dart';

void main() {
  runApp(ChoHyunKwon());
}

/// 자기애가 넘치다 못해 폭발해버려서 앱 이름을 조현권으로 해버림
class ChoHyunKwon extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    // Statusbar 색상
    SystemChrome.setSystemUIOverlayStyle(AppTheme.buildLightSystemUiOverlayStyle());

    return MaterialApp(
      title: '조현권',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.buildLightTheme(context),
      home: HomeScreen(),
      builder: (context, child) {
        final mediaQueryData = MediaQuery.of(context);

        // 텍스트 스케일이 시스템의 텍스트 스케일을 따라가는가
        final scaleMax = AppTheme.fixedFontScale ? 1.0 : MediaQuery.textScaleFactorOf(context);
        // 텍스트 스케일
        final scale = mediaQueryData.textScaleFactor.clamp(1.0, scaleMax);

        return MediaQuery(
          child: child!,
          data: MediaQuery.of(context).copyWith(textScaleFactor: scale),
        );
      },
    );
  }
}
