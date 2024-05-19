import 'package:fit_connect/widgets/home/available_activities_list.dart';
import 'package:fit_connect/widgets/home/gyms_carousel.dart';
import 'package:fit_connect/widgets/home/professional_list.dart';
import 'package:fit_connect/widgets/section_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        toolbarHeight: 70.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Fit Connect',
                  style: TextStyle(
                    fontFamily: 'GothicA1',
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Home',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(fontSize: 16),
                ),
              ],
            ),
            const Row(
              children: [
                Icon(FeatherIcons.bell),
                SizedBox(width: 16),
                Icon(FeatherIcons.moreHorizontal),
              ],
            ),
          ],
        ),
        automaticallyImplyLeading: false,
      ),
      body: const Column(
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
