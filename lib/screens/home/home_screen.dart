import 'package:flutter/material.dart';

import 'package:chohyunkwon/screens/gallery/gallery_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> bodyList = [
    Container(color: Colors.blueGrey, child: Center(child: Text('0: 홈'))),
    GalleryScreen(),
    Container(color: Colors.amber, child: Center(child: Text('2: 채팅')),),
    Container(color: Colors.green, child: Center(child: Text('3: 더보기')),),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyList.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.photo_library_outlined),
            label: '갤러리',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline_outlined),
            label: '채팅',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz_outlined),
            label: '더보기',
          ),
        ],
      ),
    );
  }
}
