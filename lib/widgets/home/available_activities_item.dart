import 'package:fit_connect/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class AvailableActivitiesItem extends StatelessWidget {
  const AvailableActivitiesItem(
      {super.key,
      required this.name,
      required this.place,
      required this.time,
      required this.image,
      required this.status});

  final String name;
  final String place;
  final String time;
  final String image;
  final String status;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 20,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 10.0),
            width: 72.0,
            height: 100.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
              ),
              borderRadius: BorderRadius.circular(25.0),
            ),
          ),
          const SizedBox(width: 16.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 16.0,
                    ),
              ),
              Text(
                place,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontSize: 16.0,
                    ),
              )
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
                  color: AppPallete.white,
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Text(
                  time,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              const SizedBox(height: 8.0),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(right: 16.0),
                width: 82,
                height: 24,
                decoration: BoxDecoration(
                  color: AppPallete.lightGreen,
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Text(
                  status,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                      ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
