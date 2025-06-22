import 'package:flutter/material.dart';

/// Bottom bar with three tabs (Home, Alerts, Users).
/// Calls [onTabChanged] with the tab’s index (0-2) whenever it is tapped.
class DashboardBottomBar extends StatelessWidget {
  const DashboardBottomBar({
    super.key,
    required this.currentIndex,
    required this.onTabChanged,
  });

  final int currentIndex;
  final ValueChanged<int> onTabChanged;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    // Icons + labels for the three tabs
    const _tabs = [
      (icon: Icons.home_outlined, label: 'Home'),
      (icon: Icons.monitor_heart_outlined, label: 'Alerts'),
      (icon: Icons.people_alt_outlined, label: 'Users'),
      (icon: Icons.settings, label: 'Settings')
    ];

    return SafeArea(
      top: false,
      child: Container(
        decoration: BoxDecoration(
          color: cs.surface,
          boxShadow: [
            BoxShadow(
              blurRadius: 12,
              color: Colors.black.withOpacity(.08),
            ),
          ],
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(28),
            topRight: Radius.circular(28),
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            _tabs.length,
            (i) => _NavItem(
              index: i,
              currentIndex: currentIndex,
              onTap: onTabChanged,
              icon: _tabs[i].icon,
              label: _tabs[i].label,
            ),
          ),
        ),
      ),
    );
  }
}

/* ───────────────── helper widget ───────────────── */

class _NavItem extends StatelessWidget {
  const _NavItem({
    required this.index,
    required this.currentIndex,
    required this.onTap,
    required this.icon,
    required this.label,
  });

  final int index;
  final int currentIndex;
  final ValueChanged<int> onTap;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    final selected = index == currentIndex;
    final cs = Theme.of(context).colorScheme;
    final idleColor = cs.onSurface.withOpacity(.6);

    return Expanded(
      child: InkWell(
        onTap: () => onTap(index),
        borderRadius: BorderRadius.circular(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: selected ? cs.primary : idleColor),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: selected ? FontWeight.w600 : FontWeight.normal,
                color: selected ? cs.primary : idleColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
