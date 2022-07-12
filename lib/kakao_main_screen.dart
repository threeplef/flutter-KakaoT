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
        backgroundColor: Colors.indigo,
        title: const Text(
          '카카오 T',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search, color: Colors.white))
        ],
      ),
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none), label: '알림'),
          BottomNavigationBarItem(
              icon: Icon(Icons.perm_identity_rounded), label: '내 정보'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
