import 'package:flutter/material.dart';

class Statisticselement extends StatelessWidget {
  const Statisticselement(
      {super.key,
      required this.title,
      required this.icon,
      required this.number,
      required this.iconColor});

  final String title;
  final IconData icon;
  final int number;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: iconColor),
              const SizedBox(width: 5),
              FittedBox(
                child:
                    Text(title, style: Theme.of(context).textTheme.titleLarge),
              )
            ],
          ),
          const SizedBox(height: 8),
          Text(number.toString(),
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: const Color.fromARGB(
                        255, 38, 38, 38), // Text color override
                  )),
        ],
      ),
    );
  }
}
