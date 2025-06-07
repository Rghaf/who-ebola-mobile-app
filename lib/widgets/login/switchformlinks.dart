import 'package:flutter/material.dart';

class SwitchFormLinks extends StatelessWidget {
  const SwitchFormLinks({
    super.key,
    required this.firstLink,
    required this.secondLink,
    required this.onLinkPressed,
  });

  final String firstLink;
  final String secondLink;
  final void Function(String) onLinkPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
              onPressed: () => onLinkPressed(firstLink.toLowerCase()),
              child: Text(firstLink)),
          TextButton(
              onPressed: () => onLinkPressed(secondLink.toLowerCase()),
              child: Text(secondLink)),
        ],
      ),
    );
  }
}
