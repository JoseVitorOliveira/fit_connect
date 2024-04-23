import 'package:fit_connect/screens/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'Você precisa estar logado para acessar esse menu',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20), // Espaçamento entre os textos
        GestureDetector(
          onTap: () {
            PersistentNavBarNavigator.pushNewScreen(
              context,
              screen: const SignIn(),
              withNavBar: false,
              pageTransitionAnimation: PageTransitionAnimation.cupertino,
            );
          },
          child: const Text(
            'Clique para iniciar sessão',
            style: TextStyle(
              fontSize: 16,
              color: Colors.blue,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}
