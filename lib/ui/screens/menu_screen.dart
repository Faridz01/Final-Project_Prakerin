import 'package:flutter/material.dart';
import 'package:ridzfltr/ui/screens/home_screen.dart';
import 'package:ridzfltr/ui/screens/list_screen.dart';
import 'package:ridzfltr/ui/screens/profile_screen.dart';

// import 'menu1_screen.dart';
// import 'menu2_screen.dart';

class MenuScreen extends StatefulWidget {
  // final String email, password;
  // MenuScreen({Key? key, required this.email, required this.password})
  //     : super(key: key);
  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    ListScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.details),
            label: 'Detail Movie',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'List Movie',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
        onTap: (index) => setState(() {
          _selectedIndex = index;
        }),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
