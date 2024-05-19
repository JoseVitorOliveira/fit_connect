import 'package:fit_connect/widgets/activities/activities.dart';
import 'package:fit_connect/widgets/profile.dart';
import 'package:flutter/material.dart';
import 'package:fit_connect/widgets/home/home.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class Navigation extends StatelessWidget {
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  Navigation({super.key});

  List<Widget> _buildScreens() {
    return [
      const Home(),
      const Activities(), // Placeholder 'Atividades'
      const Placeholder(), // Placeholder 'Personal'
      const Placeholder(), // Placeholder 'Academias'
      const Profile(), // Placeholder 'Perfil'
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home_filled),
        title: 'Home',
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.lock_clock),
        title: 'Atividades',
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.directions_run),
        title: 'Personal',
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.fitness_center),
        title: 'Academias',
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.person),
        title: 'Perfil',
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.grey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Color.fromARGB(255, 240, 240, 240),
              width: 0.1,
            ),
          ),
        ),
        child: PersistentTabView(
          context,
          controller: _controller,
          screens: _buildScreens(),
          items: _navBarsItems(),
          backgroundColor: Colors.white,
          navBarHeight: 70.0,
          navBarStyle: NavBarStyle.style6,
          onItemSelected: (int index) {
            _controller.jumpToTab(index);
          },
        ),
      ),
    );
  }
}
