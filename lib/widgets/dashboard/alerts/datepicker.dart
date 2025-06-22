import 'package:flutter/material.dart';
import 'dart:math';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

class DatePicker extends StatefulWidget {
  const DatePicker({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DatePicker();
  }
}

class _DatePicker extends State<DatePicker> {
  DateTime? _selectedDate;

  void _presentDatePicker() async {
    final now = DateTime.now();
    final firstDate = DateTime(now.year - 2);
    final pickedDate = await showDatePicker(
        context: context,
        initialDate: now,
        firstDate: firstDate,
        lastDate: now);
    setState(() {
      _selectedDate = pickedDate;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(_selectedDate == null
            ? "No selected date"
            : formatter.format(_selectedDate!)),
        IconButton(
            onPressed: _presentDatePicker,
            icon: const Icon(Icons.calendar_month))
      ],
    ));
  }
}
