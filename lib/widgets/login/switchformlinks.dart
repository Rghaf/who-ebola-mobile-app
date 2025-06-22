import 'package:flutter/material.dart';
import 'package:who_ebola/widgets/chatgpt/chatgpt.dart';

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

  void _redirectGPT(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ChatGPT()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Center(
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
      ),
      const SizedBox(
        height: 25,
      ),
      Card(
          color: Theme.of(context).colorScheme.primary,
          child: TextButton(
            onPressed: () => _redirectGPT(context),
            child: Text("Use without Login",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onPrimary,
                )),
          ))
    ]);
  }
}
