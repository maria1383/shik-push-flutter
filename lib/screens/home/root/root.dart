import 'package:flutter/material.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(bottomNavigationBar: BottomNavigationBar
    (items: [BottomNavigationBarItem
    (icon:Icon( Icons.home_outlined),
    label: "صفحه اصلی",
    ),


    BottomNavigationBarItem
    (icon:Icon( Icons.add_shopping_cart_outlined),
    label: "سبد خرید",
    ),
    
    BottomNavigationBarItem
    (icon:Icon( Icons.account_circle_outlined),
    label: "اطلاعات کاربری",
    ),


    ],
     ),
     );
  }
}
