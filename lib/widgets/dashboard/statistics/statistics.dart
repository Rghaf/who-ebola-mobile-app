// lib/widgets/statistics.dart
import 'package:flutter/material.dart';
import 'package:who_ebola/widgets/dashboard/statistics/statisticselement.dart';

/// Parent row that shows the four statistic tiles exactly as in your mock-up.
class Statistics extends StatelessWidget {
  const Statistics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      // outer spacing so tiles never touch the screen edge
      padding: EdgeInsets.symmetric(horizontal: 2, vertical: 8),
      child: Row(
        children: [
          Expanded(
            child: StatisticsElement(
              number: 35,
              label: 'Users',
              icon: Icons.people_outline_rounded,
              iconColor: Color(0xFF4A90E2),
            ),
          ),
          SizedBox(width: 6),
          Expanded(
            child: StatisticsElement(
              number: 11,
              label: 'Doctors',
              icon: Icons.medical_services_outlined,
              iconColor: Color(0xFF6C757D),
            ),
          ),
          SizedBox(width: 6),
          Expanded(
            child: StatisticsElement(
              number: 108,
              label: 'Active Alerts',
              icon: Icons.notifications_active_outlined,
              iconColor: Color(0xFF3D9943), // green accent
            ),
          ),
          SizedBox(width: 6),
          Expanded(
            child: StatisticsElement(
              number: 6,
              label: 'Resolved',
              icon: Icons.history_toggle_off_rounded,
              iconColor: Color(0xFF6C757D),
            ),
          ),
        ],
      ),
    );
  }
}
