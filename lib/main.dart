import 'package:clone_spotify/navigators/tabbar.dart';
import 'package:clone_spotify/share/constants/style_constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

// This changes the style of the bottom of the app (line 15-35)
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.dark,
        darkTheme: ThemeData(
            scaffoldBackgroundColor: Colors.black,
            brightness: Brightness.dark,
            bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              backgroundColor: primaryColor,
              type: BottomNavigationBarType.fixed,
              selectedLabelStyle: TextStyle(
                fontSize: 10,
              ),
              unselectedLabelStyle: TextStyle(
                fontSize: 12,
              ),
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.white38,
            )),
        home: const Tabbar());
  }
}
