import 'package:fit_connect/screens/home.dart';
import 'package:flutter/material.dart';
import "package:flutter_feather_icons/flutter_feather_icons.dart";

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState extends State<Navigation> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
      fontSize: 24, fontFamily: 'GothicA1', fontWeight: FontWeight.w400);
  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    Text(
      'Atividades',
      style: optionStyle,
    ),
    Text(
      'Personal',
      style: optionStyle,
    ),
    Text(
      'Academias',
      style: optionStyle,
    ),
    Text(
      'Perfil',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70.0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Fit Connect',
                  style: TextStyle(
                      fontFamily: 'GothicA1',
                      fontSize: 26,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  'Home',
                  style: TextStyle(
                      fontFamily: 'GothicA1',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 112, 112, 112)),
                ),
              ],
            ),
            Row(
              children: [
                Icon(FeatherIcons.bell),
                SizedBox(width: 16),
                Icon(FeatherIcons.moreHorizontal),
              ],
            ),
          ],
        ),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: BottomNavigationBar(
          elevation: 10,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.black,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.lock_clock),
              label: 'Atividades',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.directions_run),
              label: 'Personal',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.fitness_center),
              label: 'Academias',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Perfil',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedFontSize: 13,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
