import 'package:flutter/material.dart';

class AlertInfo extends StatelessWidget {
  const AlertInfo(
      {super.key,
      required this.name,
      required this.date,
      required this.time,
      required this.status,
      required this.description});

  final String name;
  final String date;
  final String time;
  // final String Location;
  final String status;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Alert by: $name"),
                Text("Date: $date"),
                Text("Time: $time"),
                Text("Location"),
                Text("Status: $status"),
              ],
            ),
            Container(
              width: 2,
              color: Theme.of(context).colorScheme.primary,
              margin: const EdgeInsets.symmetric(horizontal: 10),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Description"),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 6),
                    height: 2,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  Text(description),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
