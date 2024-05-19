import 'package:fit_connect/models/activity.dart';
import 'package:fit_connect/widgets/activities/activities_list.dart';
import 'package:fit_connect/widgets/activities/new_activity.dart';
import 'package:flutter/material.dart';

class Activities extends StatefulWidget {
  const Activities({super.key});

  @override
  State<Activities> createState() => _ActivitiesState();
}

class _ActivitiesState extends State<Activities> {
  final List<Activity> _registeredActivities = [
    Activity(
      name: 'Corrida no Parque',
      description: 'Corrida de 5km no parque',
      place: 'Parque da Cidade',
      category: Category.corrida,
      date: DateTime.now(),
      startTime: TimeOfDay.now(),
      endTime: TimeOfDay.now(),
    ),
    Activity(
      name: 'Futebol na Praia',
      description: 'Futebol de praia com os amigos',
      place: 'Praia de Boa Viagem',
      category: Category.esporte,
      date: DateTime.now(),
      startTime: TimeOfDay.now(),
      endTime: TimeOfDay.now(),
    ),
  ];

  void _addActivityOverlay() {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (ctx) => NewActivity(onAddActivity: _addActivity));
  }

  void _addActivity(Activity activity) {
    setState(() {
      _registeredActivities.add(activity);
    });
  }

  void _removeActivity(Activity activity) {
    final activityIndex = _registeredActivities.indexOf(activity);
    setState(() {
      _registeredActivities.remove(activity);
    });
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('${activity.name} removed!'),
        duration: const Duration(seconds: 3),
        action: SnackBarAction(
          label: 'UNDO',
          onPressed: () {
            setState(() {
              _registeredActivities.insert(activityIndex, activity);
            });
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          child: ActivitiesList(
            activities: _registeredActivities,
            onRemoveActivity: _removeActivity,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: FloatingActionButton(
            onPressed: _addActivityOverlay,
            child: const Icon(Icons.add),
          ),
        ),
      ],
    );
  }
}
