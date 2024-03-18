import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:financeapp/screens/academy.dart';
import 'package:financeapp/screens/buyandsell.dart';
import 'package:financeapp/screens/settings.dart';
import 'package:financeapp/screens/homepage.dart';

class NavProvider extends StatefulWidget {
  const NavProvider({
    Key? key,
  }) : super(key: key);

  @override
  State<NavProvider> createState() => _NavProviderstate();
}

class _NavProviderstate extends State<NavProvider> {
  int initialIndex = 0;
  List<Widget> pages = const [
    HomePage(),
    BuyandSell(),
    AcademyScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
        child: Container(
          height: 70,
          decoration:  BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(10),
            border: const Border(
              top: BorderSide(
                color: Colors.white, // Color of the border
                width: 1.0, // Width of the border
              ),
            ), // Changed the background color to black
          ),
          child: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: const Color(0xFF17171F),
            ),
            child: BottomNavigationBar(
              currentIndex: initialIndex,
              onTap: (index) {
                setState(() {
                  initialIndex = index;
                });
              },
              backgroundColor: Colors.transparent,
              selectedItemColor: const Color(0xFFBFF5C7),
              unselectedItemColor: const Color.fromARGB(103, 255, 255, 255),
              iconSize: 24,
              items: [
                const BottomNavigationBarItem(
                  icon: Icon(Icons.wallet),
                  label: 'Wallet',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset('assets/images/dol.png'),
                  label: 'Buy/Sell',
                ),
                const BottomNavigationBarItem(
                  icon: Icon(Icons.school),
                  label: 'Academy',
                ),
                const BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: 'Settings',
                ),
              ],
            ),
          ),
        ),
      ),
      body: pages[initialIndex],
    );
  }
}
