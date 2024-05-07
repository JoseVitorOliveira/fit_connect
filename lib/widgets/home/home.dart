import 'package:fit_connect/widgets/home/available_activities_list.dart';
import 'package:fit_connect/widgets/home/gyms_carousel.dart';
import 'package:fit_connect/widgets/home/professional_list.dart';
import 'package:fit_connect/widgets/section_title.dart';
import 'package:flutter/material.dart';

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
          Divider(),
          SectionTitle(
              title: 'Academias perto de você', showViewAllButton: true),
          GymsCaroulsel(),
          SizedBox(height: 15.0),
          Divider(),
          SectionTitle(
              title: 'Atividades disponíveis', showViewAllButton: true),
          AvailableActivitiesList(),
          SizedBox(height: 16.0),
        ],
      ),
    );
  }
}
