// lib/widgets/stat_tile.dart
import 'package:flutter/material.dart';

const double _cardRadius = 20.0;
const double _tileWidth = 92.0;

/// Generic statistic tile with icon → number → label.
/// Set [isSelected] true to draw the blue curved “L” accent.
class StatisticsElement extends StatelessWidget {
  const StatisticsElement({
    Key? key,
    required this.number,
    required this.label,
    required this.icon,
    required this.iconColor,
    this.isSelected = false,
  }) : super(key: key);

  final int number;
  final String label;
  final IconData icon;
  final Color iconColor;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final core = Container(
      constraints: const BoxConstraints(minWidth: 70), // prevents squashing
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(_cardRadius),
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            offset: const Offset(0, 4),
            color: Colors.black.withOpacity(.08),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 22,
            backgroundColor: iconColor.withOpacity(.15),
            child: Icon(icon, size: 24, color: iconColor),
          ),
          const SizedBox(height: 12),
          Text(
            '$number',
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 13, color: Colors.grey[600]),
          ),
        ],
      ),
    );

    if (!isSelected) return core;

    // Blue “L-bracket” scales with the tile (20 % of its side)
    return LayoutBuilder(
      builder: (_, constraints) {
        final double side = constraints.maxWidth * .20;
        return Stack(
          clipBehavior: Clip.none,
          children: [
            core,
            Positioned(
              top: -1,
              right: -1,
              child: Container(
                width: side,
                height: side,
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 4, color: Color(0xFF2971F4)),
                    right: BorderSide(width: 4, color: Color(0xFF2971F4)),
                  ),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(_cardRadius),
                    bottomLeft: Radius.circular(_cardRadius),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
