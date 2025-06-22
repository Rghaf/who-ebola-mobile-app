import 'package:flutter/material.dart';
import 'package:who_ebola/widgets/dashboard/alerts/alertcard.dart';
import 'package:who_ebola/widgets/dashboard/alerts/datepicker.dart';
import 'package:who_ebola/widgets/dashboard/globalwidgets/filterbtn.dart';
import 'dart:math';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

class Alerts extends StatefulWidget {
  const Alerts({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Alerts();
  }
}

class _Alerts extends State<Alerts> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [FilterBtn(), FilterBtn(), const DatePicker()]),
        const SizedBox(
          height: 10,
        ),
        const Divider(
          thickness: 2,
          height: 10,
        ),
        Expanded(
          // or leave out if this is directly inside a Scaffold body
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            children: const [
              AlertCard(
                sourceType: 'Location:',
                sourceName: 'City Hospital',
                description: 'Patient reports high fever and persistent cough.',
                statusText: 'AWAS',
                statusColor: Colors.green,
                indicatorColor: Colors.green,
              ),
              AlertCard(
                sourceType: 'Alert by:',
                sourceName: 'Dr. Chen',
                description: 'Patient reports high fever and persistent cough.',
                statusText: 'High Priority',
                statusColor: Colors.red,
                indicatorColor: Colors.red,
              ),
              AlertCard(
                sourceType: 'Location:',
                sourceName: 'City Hospital',
                description: 'Patient reports high fever and persistent cough.',
                statusText: 'AWAS',
                statusColor: Colors.green,
                indicatorColor: Colors.green,
              ),
              AlertCard(
                sourceType: 'Location:',
                sourceName: 'City Hospital',
                description: 'Patient reports high fever and persistent cough.',
                statusText: 'High Priority',
                statusColor: Colors.red,
                indicatorColor: Colors.red,
              ),
              AlertCard(
                sourceType: 'Location:',
                sourceName: 'City Hospital',
                description: 'Patient reports high fever and persistent cough.',
                statusText: 'High Priority',
                statusColor: Colors.red,
                indicatorColor: Colors.red,
              ),
              AlertCard(
                sourceType: 'Location:',
                sourceName: 'City Hospital',
                description: 'Patient reports high fever and persistent cough.',
                statusText: 'AWAS',
                statusColor: Colors.green,
                indicatorColor: Colors.green,
              ),
              AlertCard(
                sourceType: 'Location:',
                sourceName: 'City Hospital',
                description: 'Patient reports high fever and persistent cough.',
                statusText: 'AWAS',
                statusColor: Colors.green,
                indicatorColor: Colors.green,
              ),
              AlertCard(
                sourceType: 'Location:',
                sourceName: 'City Hospital',
                description: 'Patient reports high fever and persistent cough.',
                statusText: 'High Priority',
                statusColor: Colors.red,
                indicatorColor: Colors.red,
              ),
              AlertCard(
                sourceType: 'Location:',
                sourceName: 'City Hospital',
                description: 'Patient reports high fever and persistent cough.',
                statusText: 'High Priority',
                statusColor: Colors.red,
                indicatorColor: Colors.red,
              ),
            ],
          ),
        )
      ],
    );
  }
}
