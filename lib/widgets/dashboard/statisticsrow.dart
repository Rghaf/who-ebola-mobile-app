import 'package:flutter/material.dart';
import 'package:who_ebola/widgets/dashboard/statisticselement.dart';

class StatisticsRow extends StatelessWidget {
  const StatisticsRow(
      {super.key,
      required this.title1,
      required this.icon1,
      required this.number1,
      required this.title2,
      required this.icon2,
      required this.number2,
      required this.color1,
      required this.color2});

  final String title1;
  final String title2;
  final IconData icon1;
  final IconData icon2;
  final int number1;
  final int number2;
  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Statisticselement(
                title: title1,
                icon: icon1,
                number: number1,
                iconColor: color1,
              ),
            ),
            VerticalDivider(
              color: Theme.of(context).colorScheme.primary, // Red color
              thickness: 2, // Line thickness
              width: 10, // Space taken by divider (including spacing)
            ),
            Expanded(
              child: Statisticselement(
                title: title2,
                icon: icon2,
                number: number2,
                iconColor: color2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
