import 'package:flutter/material.dart';
import 'package:who_ebola/layout/layout.dart';
import 'package:who_ebola/widgets/dashboard/alerts/alerts.dart';
import 'package:who_ebola/widgets/dashboard/settings/settings.dart';
import 'package:who_ebola/widgets/dashboard/users/users.dart';
import 'package:who_ebola/widgets/dashboard/dashboardbottombar.dart';
import 'package:who_ebola/widgets/dashboard/admin/lastalerts.dart';
import 'package:who_ebola/widgets/dashboard/statistics/statistics.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final PageController _pageController = PageController();
  int _tab = 0; // active bottom-bar index

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Layout(
      title: const Text('Admin Dashboard'),

      /* ──────────────── SLIDABLE PAGES ──────────────── */
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) => setState(() => _tab = index),
        children: const [
          /* PAGE 0 – statistics + last alerts */
          SizedBox.expand(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: const Column(
                children: [
                  Statistics(),
                  SizedBox(height: 10),
                  Expanded(child: LastAlerts()),
                ],
              ),
            ),
          ),

          /* PAGE 1 – all alerts */
          SizedBox.expand(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: const Alerts(),
            ),
          ),

          /* PAGE 2 – users */
          SizedBox.expand(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: const Users(),
            ),
          ),
          SizedBox.expand(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: const Settings(),
            ),
          ),
        ],
      ),

      /* ──────────────── BOTTOM NAV BAR ──────────────── */
      bottomBar: DashboardBottomBar(
        currentIndex: _tab,
        onTabChanged: (index) {
          // highlight the selected icon immediately
          setState(() => _tab = index);

          // slide the PageView to the matching page
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeOut,
          );
        },
      ),
    );
  }
}
