
import 'package:flutter/material.dart';
import 'package:chohyunkwon/src/config/app_theme.dart';
import 'package:chohyunkwon/src/screen/home_screen.dart';

void main() {
  runApp(ChoHyunKwon());
}

/// 자기애가 넘치다 못해 폭발해버려서 앱 이름을 조현권으로 해버림
class ChoHyunKwon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '조현권',
      theme: AppTheme.buildLightTheme(context),
      home: HomePage(title: '홈 스크린'),
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
