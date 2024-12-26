import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:ticketsapp/screens/home_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  //iterate list using index
  final appScreens = [
    HomeScreen(),
    Center(child: const Text("Search")),
    Center(child: const Text("Tickets")),
    Center(child: const Text("Profile"))
  ];
  //change index for bottom navBar
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text("My Tickets")),
      ),
      body: appScreens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: const Color(0xFF526400),
          showSelectedLabels: false,
          items: const [
            BottomNavigationBarItem(
                icon: HugeIcon(
                  icon: HugeIcons.strokeRoundedHome01,
                  color: Colors.black,
                  size: 24,
                ),
                activeIcon: HugeIcon(
                  icon: HugeIcons.strokeRoundedHome03,
                  color: Colors.black,
                  size: 24,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: HugeIcon(
                  icon: HugeIcons.strokeRoundedSearch01,
                  color: Colors.black,
                  size: 24,
                ),
                activeIcon: HugeIcon(
                  icon: HugeIcons.strokeRoundedSearch02,
                  color: Colors.black,
                  size: 24,
                ),
                label: "Search"),
            BottomNavigationBarItem(
                icon: HugeIcon(
                  icon: HugeIcons.strokeRoundedTicket01,
                  color: Colors.black,
                  size: 24,
                ),
                activeIcon: HugeIcon(
                  icon: HugeIcons.strokeRoundedTicket02,
                  color: Colors.black,
                  size: 24,
                ),
                label: "Ticket"),
            BottomNavigationBarItem(
                icon: HugeIcon(
                  icon: HugeIcons.strokeRoundedUser,
                  color: Colors.black,
                  size: 24,
                ),
                activeIcon: HugeIcon(
                  icon: HugeIcons.strokeRoundedUserCircle,
                  color: Colors.black,
                  size: 24,
                ),
                label: "Person"),
          ]),
    );
  }
}
