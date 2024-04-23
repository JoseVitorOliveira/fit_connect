import 'package:fit_connect/screens/stories_profile.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfessionalsList(),
          SizedBox(height: 3.0),
          GreyDivider(),
          GymsNearby(),
          GymsCarousel(),
          SizedBox(height: 15.0),
          GreyDivider(),
          ActivitiesAvailable(),
          SizedBox(height: 16.0),
          ActivityOne(),
          GreyDivider(),
          ActivityTwo(),
        ],
      ),
    );
  }
}

class ActivityOne extends StatelessWidget {
  const ActivityOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 10.0),
          width: 72.0,
          height: 72.0,
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage('assets/images/dance.png'),
            ),
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
        const SizedBox(width: 16.0),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Dança",
              style: TextStyle(
                fontFamily: 'GothicA1',
                fontWeight: FontWeight.w600,
                fontSize: 16.0,
              ),
            ),
            Text(
              "Academia das Cidades",
              style: TextStyle(
                  fontFamily: 'GothicA1',
                  fontWeight: FontWeight.w400,
                  fontSize: 16.0,
                  color: Color.fromARGB(255, 112, 112, 112)),
            ),
          ],
        ),
        const Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(right: 16.0),
              width: 96,
              height: 24,
              decoration: BoxDecoration(
                color: const Color(0xFFf2f2f2),
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: const Text(
                "9h30 - 10h30",
                style: TextStyle(
                  fontFamily: 'GothicA1',
                  fontSize: 12.0,
                  color: Color.fromARGB(255, 112, 112, 112),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 8.0),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(right: 16.0),
              width: 52,
              height: 24,
              decoration: BoxDecoration(
                color: const Color(0xFFADF6BF),
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: const Text(
                "LIVRE",
                style: TextStyle(
                  fontFamily: 'GothicA1',
                  fontSize: 12.0,
                  color: Color.fromARGB(255, 112, 112, 112),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class ActivityTwo extends StatelessWidget {
  const ActivityTwo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 10.0),
          width: 72.0,
          height: 72.0,
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage('assets/images/run.png'),
            ),
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
        const SizedBox(width: 16.0),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Dança",
              style: TextStyle(
                fontFamily: 'GothicA1',
                fontWeight: FontWeight.w600,
                fontSize: 16.0,
              ),
            ),
            Text(
              "Academia Fitness 2",
              style: TextStyle(
                  fontFamily: 'GothicA1',
                  fontWeight: FontWeight.w400,
                  fontSize: 16.0,
                  color: Color.fromARGB(255, 112, 112, 112)),
            ),
          ],
        ),
        const Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(right: 16.0),
              width: 96,
              height: 24,
              decoration: BoxDecoration(
                color: const Color(0xFFf2f2f2),
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: const Text(
                "11h30 - 13h30",
                style: TextStyle(
                  fontFamily: 'GothicA1',
                  fontSize: 12.0,
                  color: Color.fromARGB(255, 112, 112, 112),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 8.0),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(right: 16.0),
              width: 74,
              height: 24,
              decoration: BoxDecoration(
                color: const Color(0xFFFFF7AB),
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: const Text(
                "RESTRITO",
                style: TextStyle(
                  fontFamily: 'GothicA1',
                  fontSize: 12.0,
                  color: Color.fromARGB(255, 112, 112, 112),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class ActivitiesAvailable extends StatelessWidget {
  const ActivitiesAvailable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, top: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "ATIVIDADES DISPONÍVEIS",
            style: TextStyle(
              fontSize: 17.0,
              fontFamily: 'GothicA1',
              fontWeight: FontWeight.w600,
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(right: 16.0),
            width: 74,
            height: 40,
            decoration: BoxDecoration(
              color: const Color(0xFFf2f2f2),
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: const Text(
              "View all",
              style: TextStyle(
                fontFamily: 'GothicA1',
                fontSize: 14.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class GymsCarousel extends StatelessWidget {
  const GymsCarousel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200.0,
        viewportFraction: 0.8,
        enlargeCenterPage: true,
      ),
      items: [
        'assets/images/gym_1.png',
        'assets/images/gym_2.png',
        'assets/images/gym_3.png',
      ].map((imagePath) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}

class GymsNearby extends StatelessWidget {
  const GymsNearby({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, top: 16.0, bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "ACADEMIAS PERTO DE VOCÊ",
            style: TextStyle(
              fontSize: 17.0,
              fontFamily: 'GothicA1',
              fontWeight: FontWeight.w600,
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(right: 16.0),
            width: 74,
            height: 40,
            decoration: BoxDecoration(
              color: const Color(0xFFf2f2f2),
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: const Text(
              "View all",
              style: TextStyle(
                fontFamily: 'GothicA1',
                fontSize: 14.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProfessionalsList extends StatelessWidget {
  const ProfessionalsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(10, (index) {
          return Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 11.0, top: 20.0),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    PersistentNavBarNavigator.pushNewScreen(
                      context,
                      screen: const StoriesProfile(),
                      withNavBar: true,
                      pageTransitionAnimation:
                          PageTransitionAnimation.cupertino,
                    );
                  },
                  child: Container(
                    width: 74,
                    height: 74,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: const DecorationImage(
                        image: AssetImage('assets/images/mbappe.png'),
                      ),
                      color: const Color.fromARGB(255, 218, 218, 218),
                      border: Border.all(
                        color: Colors.grey[600]!,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Person ${index + 1}",
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 112, 112, 112),
                    fontFamily: 'GothicA1',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}

class GreyDivider extends StatelessWidget {
  const GreyDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: Color.fromARGB(255, 208, 208, 208),
      thickness: 0.7,
    );
  }
}
