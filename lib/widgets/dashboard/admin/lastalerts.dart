// lib/widgets/last_alerts.dart
import 'package:flutter/material.dart';
import 'package:who_ebola/widgets/dashboard/alerts/alertcard.dart';

/// Column that shows the “Alerts” title and three sample alert cards.
/// Replace the cards with your real data or ListView.builder.
class LastAlerts extends StatelessWidget {
  const LastAlerts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8, bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Section title
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Card(
                color: Colors.white,
                child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      'Last Alerts',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(fontWeight: FontWeight.bold),
                    )),
              )),
          const SizedBox(height: 10),

          // Example cards
          Expanded(
            // or leave out if this is directly inside a Scaffold body
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              children: const [
                AlertCard(
                  sourceType: 'Alert by:',
                  sourceName: 'Dr. Chen',
                  description:
                      'Patient reports high fever and persistent cough.',
                  statusText: 'High Priority',
                  statusColor: Colors.red,
                  indicatorColor: Colors.red,
                ),
                AlertCard(
                  sourceType: 'Location:',
                  sourceName: 'City Hospital',
                  description:
                      'Patient reports high fever and persistent cough.',
                  statusText: 'AWAS',
                  statusColor: Colors.green,
                  indicatorColor: Colors.green,
                ),
                AlertCard(
                  sourceType: 'Location:',
                  sourceName: 'City Hospital',
                  description:
                      'Patient reports high fever and persistent cough.',
                  statusText: 'High Priority',
                  statusColor: Colors.red,
                  indicatorColor: Colors.red,
                ),
                AlertCard(
                  sourceType: 'Location:',
                  sourceName: 'City Hospital',
                  description:
                      'Patient reports high fever and persistent cough.',
                  statusText: 'High Priority',
                  statusColor: Colors.red,
                  indicatorColor: Colors.red,
                ),
                AlertCard(
                  sourceType: 'Location:',
                  sourceName: 'City Hospital',
                  description:
                      'Patient reports high fever and persistent cough.',
                  statusText: 'High Priority',
                  statusColor: Colors.red,
                  indicatorColor: Colors.red,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
