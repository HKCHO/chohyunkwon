import 'package:chohyunkwon/screens/settings/settings_screen.dart';
import 'package:flutter/material.dart';

class MoreScreen extends StatefulWidget {
  MoreScreen({Key? key}) : super(key: key);

  @override
  _MoreScreenState createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {

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
      title: Text('더보기'),
      centerTitle: false,
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
