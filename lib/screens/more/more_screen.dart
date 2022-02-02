import 'package:chohyunkwon/configurations/app_theme.dart';
import 'package:chohyunkwon/constants/app_colors.dart';
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
      appBar: _buildAppBar(),
      body: SafeArea(
        child: Container(
          child: Center(
              child: Text('더보기'))
        )
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      centerTitle: false,
      title: Text('더보기'),
      shadowColor: Colors.transparent,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: AppColors.brand,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.light,
      ),
      actions: [
        IconButton(
            onPressed: () {
              print('설정버튼 눌림');
            },
            icon: Icon(Icons.settings_outlined)
        )
      ],
    );
  }
}
