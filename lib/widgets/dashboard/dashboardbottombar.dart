import 'package:flutter/material.dart';

class DashboardBottomBar extends StatelessWidget {
  const DashboardBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(), // Optional notch for FAB
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Left side
            IconButton(
              icon: const Icon(Icons.people),
              onPressed: () {
                print("Users tapped");
              },
            ),
            IconButton(
              icon: const Icon(Icons.warning),
              onPressed: () {
                print("Alerts tapped");
              },
            ),
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                print("Settings tapped");
              },
            ),
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                print("Home tapped");
              },
            ),
          ],
        ),
      ),
    );
  }
}
