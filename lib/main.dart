import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shik_poush/screens/home/root/root.dart';
import 'package:shik_poush/them.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
    title: "shik poush",
     localizationsDelegates: [
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ],
  supportedLocales: [
    Locale('fa'), // English
    Locale('en'), // Spanish
  ],
  locale: Locale("fa"),
    theme: lightTheme(),
    home: RootScreen(),
    );
  }
}