
import 'package:chohyunkwon/src/config/app_theme.dart';
import 'package:flutter/material.dart';

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
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '플러터 도전기',
            ),

          ],
        ),
      ),
    );
  }
}
