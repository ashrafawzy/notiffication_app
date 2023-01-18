import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:notification_app/View/profile_creator1.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedTab = 0;
  final List _pages = [
    const ProfileCreator(),
    const ProfileCreator(),
    const ProfileCreator(),
    const ProfileCreator(),
    const ProfileCreator()
  ];

  Widget callpage(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return const ProfileCreator();
      case 1:
        return const ProfileCreator();
      case 2:
        return const ProfileCreator();
      case 3:
        return const ProfileCreator();

        break;
      default:
        return const ProfileCreator();
    }
  }

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _pages[_selectedTab],
        bottomNavigationBar: BottomNavigationBar(
          elevation: 10,
          currentIndex: _selectedTab,
          onTap: (index) => _changeTab(index),
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,

          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: SvgPicture.asset(
                'assets/svgs/home.svg',
                color: Colors.black,
              ),
              activeIcon:
                  SvgPicture.asset('assets/svgs/home.svg', color: Colors.red),
              label: ('Home'),
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: SvgPicture.asset('assets/svgs/order.svg'),
              activeIcon: SvgPicture.asset(
                'assets/svgs/order.svg',
                color: Colors.red,
              ),
              label: ('Create'),
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: SvgPicture.asset('assets/svgs/calendar(2).svg'),
              activeIcon: SvgPicture.asset(
                'assets/svgs/calendar(2).svg',
                color: Colors.red,
              ),
              label: ('Request'),
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
              label: ('Profile'),
              icon: SvgPicture.asset('assets/svgs/profile.svg'),
              activeIcon: SvgPicture.asset(
                'assets/svgs/profile.svg',
                color: Colors.red,
              ),
            )
          ],

          // onTap: (index) {
          //   setState(() {
          //     _currentindex = index;
          //
          //   });
        ),
      ),
    );
  }
}
