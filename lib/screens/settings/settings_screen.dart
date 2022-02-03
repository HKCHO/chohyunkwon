import 'package:flutter/material.dart';

import 'package:settings_ui/settings_ui.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'package:chohyunkwon/constants/app_colors.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsScreen extends StatefulWidget {
  SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  PackageInfo _packageInfo = PackageInfo(
    appName: '조현권',
    packageName: 'Unknown',
    version: '...',
    buildNumber: 'Unknown',
    buildSignature: 'Unknown',
  );

  @override
  void initState() {
    super.initState();
    _initPackageInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: SafeArea(
        child: SettingsList(
          shrinkWrap: false,
          platform: DevicePlatform.iOS,
          // applicationType: ApplicationType.cupertino,
          lightTheme: _buildSettingsLightTheme(context),
          sections: [
            SettingsSection(
              tiles: [
                SettingsTile.navigation(
                  // leading: Icon(Icons.notifications_none_sharp),
                  title: Text('공지사항'),
                  trailing: Text(''),
                  onPressed: (context) {
                    print('TODO 공지사항 스크린으로 이동');
                  },
                ),
              ],
            ),
            SettingsSection(
              title: Text('알림'),
              tiles: <SettingsTile>[
                SettingsTile.switchTile(
                  activeSwitchColor: AppColors.brand,
                  onToggle: (value) {},
                  initialValue: true,
                  title: Text('라이브 방송 알림'),
                ),
                SettingsTile.switchTile(
                  activeSwitchColor: AppColors.brand,
                  onToggle: (value) {},
                  initialValue: true,
                  title: Text('현권이의 위치 업데이트 알림'),
                ),
              ]
            ),
            // 일반
            SettingsSection(
              title: Text('일반'),
              tiles: <SettingsTile>[
                SettingsTile.navigation(
                  title: Text('언어'),
                  value: Text('한국어', style: TextStyle(fontSize: 14),),
                ),
              ],
            ),

            // 어플리케이션
            SettingsSection(
              title: Text('어플리케이션'),
              tiles: <SettingsTile>[
                SettingsTile.navigation(
                  title: Text('버전'),
                  trailing: Text(_packageInfo.version),
                ),
                SettingsTile.navigation(
                  title: Text('빌드번호'),
                  trailing: Text(_packageInfo.buildNumber),
                ),
                SettingsTile.navigation(
                  // leading: Icon(Icons.info_outlined),
                  title: Text('상세정보'),
                  onPressed: (context) {
                    showAboutDialog(
                      context: context,
                      applicationName: _packageInfo.appName,
                      applicationVersion: _packageInfo.version,
                      applicationIcon: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/app_icon.png'),
                      ),
                      applicationLegalese: '현권이의 플러터 앱'
                    );
                  },
                ),
                SettingsTile.navigation(
                  title: Text('최신버전으로 업데이트', style: TextStyle(color: Colors.blueAccent),),
                  trailing: Text(''),
                  onPressed: (context) {
                    print('TODO 마켓으로 이동 또는 on-air-update.');
                  },
                ),
              ]
            )
          ],
        ),
      )
    );
  }

  // 더보기 화면 앱바
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      // title: Text(AppLocalizations.of(context)!.settings),
      title: Text(AppLocalizations.of(context)!.settings),
    );
  }

  // 설정화면 light mode 테마
  SettingsThemeData _buildSettingsLightTheme(BuildContext context) {
    return SettingsThemeData(
      titleTextColor: AppColors.brand,
    );
  }

  Future<void> _initPackageInfo() async {
    final info = await PackageInfo.fromPlatform();

    setState(() {
      _packageInfo = info;
    });
  }
}
