import 'package:fit_connect/models/activity.dart';
import 'package:fit_connect/widgets/activities/activities_item.dart';
import 'package:flutter/material.dart';

class ActivitiesList extends StatelessWidget {
  const ActivitiesList(
      {super.key, required this.activities, required this.onRemoveActivity});

  final List<Activity> activities;
  final void Function(Activity) onRemoveActivity;

  @override
  Widget build(BuildContext context) {
    Widget content = const Center(
      child: Text('Nenhuma atividade cadastrada'),
    );

    if (activities.isNotEmpty) {
      content = ListView.builder(
        itemCount: activities.length,
        itemBuilder: (context, index) => Dismissible(
          key: ValueKey(activities[index].id),
          onDismissed: (direction) {
            onRemoveActivity(activities[index]);
          },
          child: ActivityItem(activity: activities[index]),
        ),
      );
    }

    return content;
  }
}
