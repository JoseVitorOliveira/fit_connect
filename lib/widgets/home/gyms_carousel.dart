import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class GymsCaroulsel extends StatelessWidget {
  const GymsCaroulsel({super.key});

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
