import 'package:booking_ticket_ui/screens/home_screen.dart';
import 'package:booking_ticket_ui/screens/profile_screen.dart';
import 'package:booking_ticket_ui/screens/search_screen.dart';
import 'package:booking_ticket_ui/screens/ticket_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});
  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  static final List<Widget> _widegtOptions = [
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen(),
  ];
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widegtOptions[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          elevation: 10,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: const Color(0xFF526480),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
              label: 'home',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  FluentSystemIcons.ic_fluent_search_regular,
                ),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
                label: 'search'),
            BottomNavigationBarItem(
                icon: Icon(
                  FluentSystemIcons.ic_fluent_ticket_regular,
                ),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
                label: 'tickets'),
            BottomNavigationBarItem(
                icon: Icon(
                  FluentSystemIcons.ic_fluent_person_regular,
                ),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
                label: 'profile'),
          ]),
    );
  }
}
