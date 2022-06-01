import 'package:flutter/material.dart';
import 'package:task_management/pages/about_page.dart';
import 'package:task_management/pages/home_page.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  List pages = [
    HomePage(),
    AboutPage(),
  ];
  int _selectedPageIndex = 0;
  void onTapFun(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue[400],
        unselectedItemColor: Colors.amber,
        onTap: onTapFun,
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "About",
            icon: Icon(Icons.align_vertical_bottom_outlined),
          ),
        ],
      ),
    );
  }
}
