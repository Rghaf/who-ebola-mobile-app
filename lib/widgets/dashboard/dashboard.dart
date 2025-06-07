import 'package:flutter/material.dart';
import 'package:who_ebola/layout/layout.dart';
import 'package:who_ebola/widgets/dashboard/dashboardbottombar.dart';
import 'package:who_ebola/widgets/dashboard/lastalerts.dart';
import 'package:who_ebola/widgets/dashboard/statistics.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Dashboard();
  }
}

class _Dashboard extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Layout(
        title: const Text("Admin Dashboard"),
        body: PageView(children: [
          SizedBox.expand(
            child: Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: const Column(
                children: [
                  Statistics(),
                  Lastalerts(),
                ],
              ),
            ),
          ),
          SizedBox.expand(
            child: Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: const Column(
                children: [
                  Statistics(),
                  Lastalerts(),
                ],
              ),
            ),
          )
        ]),
        bottomBar: DashboardBottomBar());
  }
}

//Statistics #users, #doctors, #alerts, #finished alerts DONE
//alerts history 
//manage users
//settings
