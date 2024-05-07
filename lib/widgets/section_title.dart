import 'package:fit_connect/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle(
      {super.key, required this.title, this.showViewAllButton = false});

  final String title;
  final bool showViewAllButton;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, top: 16.0, bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title.toUpperCase(),
            style: Theme.of(context).textTheme.bodyMedium,
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
              child: showViewAllButton
                  ? Text(
                      "View all",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontWeight: FontWeight.w600,
                            color: AppPallete.lightGrayText,
                          ),
                    )
                  : null),
        ],
      ),
    );
  }
}
