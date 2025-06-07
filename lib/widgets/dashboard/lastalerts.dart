import 'package:flutter/material.dart';
import 'package:who_ebola/widgets/dashboard/alertcard.dart';

class Lastalerts extends StatelessWidget {
  const Lastalerts({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15, bottom: 15),
      child: Column(
        children: [
          Text(
            "ALERTS",
            style:
                Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 22),
          ),
          AlertCard(),
          AlertCard(),
          AlertCard(),
        ],
      ),
    );
  }
}
