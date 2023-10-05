import 'package:flutter/material.dart';
import 'package:shik_poush/screens/home/home.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int selectedScreenIndex = 0;
  Widget selectedScreen = HoomeScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedScreenIndex,
        onTap: (value) {
          setState(() {
            selectedScreenIndex = value;

            switch (value) {
              case 0:
                selectedScreen = HoomeScreen();

                break;
              case 1:
                selectedScreen = Container(
                  color: Colors.amber,
                );
                break;
              case 2:
                selectedScreen = Container(
                  color: Colors.white,
                );
            }
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 30,
        unselectedFontSize: 25,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "صفحه اصلی",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart_outlined),
            label: "سبد خرید",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: "اطلاعات کاربری",
          ),
        ],
      ),
      body: selectedScreen,
    );
  }
}
