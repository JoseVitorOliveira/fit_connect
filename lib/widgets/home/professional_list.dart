import 'package:fit_connect/widgets/home/professional_item.dart';
import 'package:flutter/material.dart';

final Map<String, String> professionals = {
  'Mbappe': 'assets/images/mbappe.png',
  'Killian': 'assets/images/mbappe.png',
  'Mbp': 'assets/images/mbappe.png',
  'Mb': 'assets/images/mbappe.png',
  'MBPPP': 'assets/images/mbappe.png',
  'Mbapppee': 'assets/images/mbappe.png',
};

class ProfessionalsList extends StatelessWidget {
  const ProfessionalsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Expanded(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: professionals.length,
          itemBuilder: (context, index) => ProfessionalItem(
            name: professionals.keys.elementAt(index),
            image: professionals.values.elementAt(index),
          ),
        ),
      ),
    );
  }
}
