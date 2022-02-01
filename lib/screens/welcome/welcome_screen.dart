import 'package:flutter/material.dart';

import 'package:chohyunkwon/screens/gallery/gallery_screen.dart';
import 'package:chohyunkwon/screens/schedule/schedule_screen.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class WelcomeScreen extends StatefulWidget {
  WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> bodyList = [
    Container(color: Colors.blueGrey, child: Center(child: Text('0: 홈'))),
    GalleryScreen(),
    ScheduleScreen(),
    Container(color: Colors.green, child: Center(child: Text('3: 더보기')),),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: bodyList.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: AppLocalizations.of(context)!.bottomNavHome,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.photo_library_outlined),
            label: AppLocalizations.of(context)!.bottomNavGallery,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_outlined),
            label: AppLocalizations.of(context)!.bottomNavSchedule,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz_outlined),
            label: AppLocalizations.of(context)!.bottomNavMore,
          ),
        ],
      ),
    );
  }
}
