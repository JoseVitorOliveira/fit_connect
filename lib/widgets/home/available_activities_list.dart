import 'package:fit_connect/widgets/home/available_activities_item.dart';
import 'package:flutter/material.dart';

final activities = [
  {
    'name': 'Dança',
    'place': 'Academia',
    'time': '10:00-11h30',
    'status': 'Disponível',
    'image': 'assets/images/dance.png',
  },
  {
    'name': 'Musculação',
    'place': 'Academia',
    'time': '10:00-11h30',
    'status': 'Disponível',
    'image': 'assets/images/run.png',
  },
  {
    'name': 'Crossfit',
    'place': 'Academia',
    'time': '10:00-11h30',
    'status': 'Disponível',
    'image': 'assets/images/dance.png',
  },
  {
    'name': 'Yoga',
    'place': 'Academia',
    'time': '10:00-11h30',
    'status': 'Disponível',
    'image': 'assets/images/run.png',
  },
  {
    'name': 'Pilates',
    'place': 'Academia',
    'time': '10:00-11h30',
    'status': 'Disponível',
    'image': 'assets/images/dance.png',
  },
];

class AvailableActivitiesList extends StatelessWidget {
  const AvailableActivitiesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: activities.length,
        itemBuilder: (context, index) => AvailableActivitiesItem(
          name: activities[index]['name']!,
          place: activities[index]['place']!,
          time: activities[index]['time']!,
          image: activities[index]['image']!,
          status: activities[index]['status']!,
        ),
      ),
    );
  }
}
