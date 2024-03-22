import 'package:clone_spotify/views/home.dart';
import 'package:clone_spotify/views/library.dart';
import 'package:clone_spotify/views/profile.dart';
import 'package:clone_spotify/views/search.dart';
import 'package:flutter/material.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TabbarState createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  int _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedTab,
            onTap: (index) {
              setState(() {
                _selectedTab = index;
              });
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: "search"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.library_music), label: "your library"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "perfile"),
            ]),
        body: Stack(
          children: [
            renderView(0, const HomeView()),
            renderView(1, const SearchView()),
            renderView(2, const LibraryVie()),
            renderView(3, const ProfileView()),
          ],
        ));
  }

  Widget renderView(int tabIndex, Widget view) {
    return IgnorePointer(
      ignoring: _selectedTab != tabIndex,
      child: Opacity(
        opacity: _selectedTab == tabIndex ? 1 : 0,
        child: view,
      ),
    );
  }
}
