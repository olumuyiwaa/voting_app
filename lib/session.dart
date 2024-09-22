import 'package:flutter/material.dart';
import '../pages/vote_home.dart';
import '../pages/result.dart';
import '../pages/profile.dart';

class Session extends StatefulWidget {
  const Session({super.key});

  @override
  State<Session> createState() => _SessionState();
}

int _pageIndex = 0;

class _SessionState extends State<Session> {
  void _bottomNavTapped(int index) {
    setState(() {
      _pageIndex = index;
    });
  }

  final List<Widget> _pages = [
    const VoteHome(),
    const Result(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 17, 23, 40),
        body: SafeArea(child: _pages[_pageIndex]),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 17, 23, 40),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.blueGrey,
          type: BottomNavigationBarType.fixed,
          // current page index to display on buttom nav bar
          currentIndex: _pageIndex,
          //get button page index
          onTap: _bottomNavTapped,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list_alt),
              label: 'Results',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
