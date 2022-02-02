import 'package:chohyunkwon/configurations/app_theme.dart';
import 'package:chohyunkwon/constants/app_colors.dart';
import 'package:chohyunkwon/screens/settings/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MoreScreen extends StatefulWidget {
  MoreScreen({Key? key}) : super(key: key);

  @override
  _MoreScreenState createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {

  @override
  void dispose() {
    super.dispose();

    SystemChrome.setSystemUIOverlayStyle(
        AppTheme.buildLightSystemUiOverlayStyle());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: SafeArea(
        child: Container(
          child: Center(
              child: Text('더보기'))
        )
      ),
    );
  }

  // 더보기 화면 앱바
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      centerTitle: false,
      title: Text('더보기'),
      shadowColor: Colors.transparent,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: AppColors.brand,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
      actions: [
        _settingsButton(context)
      ],
    );
  }

  // 설정 버튼
  IconButton _settingsButton(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SettingsScreen()),
        );
      },
      icon: Icon(Icons.settings_outlined)
    );
  }
}
