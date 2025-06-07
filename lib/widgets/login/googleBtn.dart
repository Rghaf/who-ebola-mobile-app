import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GooogleBtn extends StatelessWidget {
  GooogleBtn({required this.svgNumber, super.key});

  final int svgNumber;

  final List<String> btnSVG = [
    "assets/google/sign-in-light.svg",
    "assets/google/sign-in-light-2.svg",
    "assets/google/sign-up-light.svg",
    "assets/google/sign-up-light-2.svg",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: InkWell(
        onTap: () => {print("google btn pressed!")},
        child: SvgPicture.asset(btnSVG[svgNumber], width: 240),
      ),
    );
  }
}
