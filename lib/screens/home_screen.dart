import 'package:app_portfolio/screens/profile_screen.dart';
import 'package:app_portfolio/screens/stacks_screen.dart';
import 'package:app_portfolio/theme/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _index = 0;

  final List<Widget> screens = [
    ProfileScreen(),
    StacksScreen()
  ];

  void selecionarIndex(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: screens[_index],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: background
            )
          )
        ),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.code), label: "Stacks")
          ],
          iconSize: 40,
          
          backgroundColor: primary,
          unselectedItemColor: background,
          selectedItemColor: contrast,
          currentIndex: _index,
          onTap: (value) => selecionarIndex(value),
        ),
      )
    );
  }
}