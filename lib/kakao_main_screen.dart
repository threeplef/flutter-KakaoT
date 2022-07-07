import 'package:flutter/material.dart';
import 'package:kakaot/home_screen.dart';
import 'package:kakaot/info_screen.dart';
import 'package:kakaot/service_screen.dart';

class KaKaoMainScreen extends StatefulWidget {
  const KaKaoMainScreen({Key? key}) : super(key: key);

  @override
  State<KaKaoMainScreen> createState() => _KaKaoMainScreenState();
}

class _KaKaoMainScreenState extends State<KaKaoMainScreen> {
  int _selectedIndex = 0;

  final screens = [
    HomeScreen(),
    ServiceScreen(),
    InfoScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          '카카오 T',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add,
                color: Colors.black,
              ))
        ],
      ),
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: '이용 서비스',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: '내 정보',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
