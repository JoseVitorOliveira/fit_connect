import 'package:fit_connect/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState extends State<Navigation> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    Text(
      'Agenda',
      style: optionStyle,
    ),
    Text(
      'Clientes',
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
        backgroundColor: const Color(0xFF00B1C3),
        title: const Text(
          'Fit Connect',
          style: TextStyle(
            color: Color(0xff006387),
            fontFamily: "Kanit",
            fontWeight: FontWeight.w700,
          ),
        ),
        leading: Container(
          padding: const EdgeInsets.all(8),
          child: SvgPicture.asset(
            "assets/images/logo.svg",
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications),
            color: const Color(0xff006387),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.search),
            color: const Color(0xff006387),
            onPressed: () {},
          ),
        ],
        automaticallyImplyLeading: false,
        titleSpacing: 0,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: const Color(0xFF00B1C3),
        ),
        child: BottomNavigationBar(
          showUnselectedLabels: true,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home  ',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today_outlined),
              label: 'Agenda',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: 'Clientes',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Perfil',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
