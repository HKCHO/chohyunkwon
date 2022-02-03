import 'package:chohyunkwon/constants/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:chohyunkwon/constants/app_constants.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return SafeArea(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(defalutContainerPadding),
            child: Row(
              children: [
                Text('오늘의 일정', style: themeData.textTheme.headline6,),
              ],
            ),
          ),

          // Container(
          //   padding: EdgeInsets.all(defalutContainerPadding),
          //   child: Row(
          //     children: [
          //       Text('여기 있습니다', style: themeData.textTheme.headline6,),
          //     ],
          //   ),
          // ),

          Container(
            padding: EdgeInsets.all(defalutContainerPadding),
            child: Row(
              children: [
                Text('소식', style: themeData.textTheme.headline6,),
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.all(defalutContainerPadding),
            child: Row(
              children: [
                Text('재롱잔치 😎', style: themeData.textTheme.headline6,),
              ],
            ),
          ),
        ],
      )
    );
  }
}
