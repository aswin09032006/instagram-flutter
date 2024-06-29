import 'package:flutter/material.dart';
import 'package:ig/pages/addpost.dart';
import 'package:ig/pages/home.dart';
import 'package:ig/pages/profile/profile.dart';
import 'package:ig/pages/reels.dart';
import 'package:ig/pages/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _navigateBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _children = [
    UserHome(),
    UserSearch(),
    AddPost(),
    UserReels(),
    UserProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigateBottomNavBar,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box),
              label: 'Add Post',
            ),
            BottomNavigationBarItem(
              icon: Image(
                image: AssetImage('assets/images/reels.png'),
                height: 20,
                color: Color.fromARGB(255, 87, 87, 87),
              ),
              label: 'Reels',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_rounded),
              label: 'Account',
            )
          ]),
    );
  }
}
