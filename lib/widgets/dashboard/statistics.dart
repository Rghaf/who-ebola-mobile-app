import 'package:flutter/material.dart';
import 'package:who_ebola/widgets/dashboard/statisticselement.dart';
import 'package:who_ebola/widgets/dashboard/statisticsrow.dart';

class Statistics extends StatelessWidget {
  const Statistics({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 10, // Shadow depth
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Theme.of(context).colorScheme.primary, // Border color
            width: 2, // Border width
          ),
          borderRadius: BorderRadius.circular(12), // Rounded corners
        ),
        color: Theme.of(context).colorScheme.secondaryFixedDim,
        child: Column(children: [
          const StatisticsRow(
            title1: "Users",
            icon1: Icons.person_2_rounded,
            number1: 35,
            title2: "Doctors",
            icon2: Icons.health_and_safety,
            number2: 11,
            color1: Colors.blueGrey,
            color2: Colors.green,
          ),
          Divider(
            color: Theme.of(context).colorScheme.primary,
            thickness: 2,
          ),
          const StatisticsRow(
            title1: "Alerts",
            icon1: Icons.add_alert,
            number1: 108,
            title2: "Finished Alerts",
            icon2: Icons.done_all_sharp,
            number2: 6,
            color1: Color.fromARGB(255, 166, 1, 1),
            color2: Colors.green,
          ),
        ]));
  }
}
