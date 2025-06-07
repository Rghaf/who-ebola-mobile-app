import 'package:flutter/material.dart';
import 'package:who_ebola/widgets/dashboard/dashboard.dart';

class Layout extends StatelessWidget {
  const Layout(
      {super.key,
      required this.body,
      required this.bottomBar,
      required this.title,
      this.centerTitle = true});

  final Widget title;
  final Widget body;
  final Widget bottomBar;
  final bool centerTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: title, centerTitle: centerTitle),
      body: body,
      bottomNavigationBar: bottomBar,
    );
  }
}
