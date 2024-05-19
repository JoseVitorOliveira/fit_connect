import 'package:fit_connect/models/activity.dart';
import 'package:fit_connect/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class ActivityItem extends StatelessWidget {
  const ActivityItem({
    super.key,
    required this.activity,
  });

  final Activity activity;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      width: double.infinity,
      height: 80.0,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        border: Border(
          bottom: BorderSide(
            color: Color.fromARGB(255, 229, 229, 229),
            width: 1.0,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(categoryIcons[activity.category],
              size: 40.0, color: AppPallete.blackText),
          const SizedBox(width: 16.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                activity.name,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 16.0,
                    ),
              ),
              Text(
                activity.place,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontSize: 16.0,
                    ),
              )
            ],
          ),
          const Spacer(),
          Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(right: 16.0),
                  width: 96,
                  height: 24,
                  child: Text(activity.formattedDate,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: AppPallete.lightGrayText,
                            fontSize: 14,
                          )),
                ),
                const SizedBox(height: 8.0),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(right: 16.0),
                  width: 100,
                  height: 24,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Text(
                    '${activity.startTime.format(context)} - ${activity.endTime.format(context)}',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
              ]),
        ],
      ),
    );
  }
}
