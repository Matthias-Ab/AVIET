import 'package:flutter/material.dart';
import 'package:navigation_bar/pages/courses.dart';
import 'package:navigation_bar/pages/enroll.dart';
import 'package:navigation_bar/pages/home.dart';
import 'package:navigation_bar/pages/menu.dart';


class HomePage extends StatefulWidget {
  const HomePage ({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _navigateBottomBar (int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    UserHome(),
    UserCourses(),
    UserEnroll(),
    UserMenu(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],


      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 3, 84, 150),
          currentIndex: _selectedIndex,
          onTap: _navigateBottomBar,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: const Color.fromARGB(255, 221, 221, 221),
          selectedFontSize: 16,
          unselectedFontSize: 12,
          selectedItemColor: Colors.pink[400],
          items: [ 
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home", backgroundColor: Colors.pink[400]),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: "Courses"),
          BottomNavigationBarItem(icon: Icon(Icons.edit_document), label: "Enroll"),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Menu"),
          
        ],
        
      ),
    );
  }
}