// lib/widgets/alert_card.dart
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:who_ebola/widgets/dashboard/alerts/alertcontent.dart';

/// Swipe-to-reveal card with Edit / Delete actions.
class AlertCard extends StatelessWidget {
  final String sourceType;
  final String sourceName;
  final String description;
  final String statusText;
  final Color statusColor;
  final Color indicatorColor;

  const AlertCard({
    Key? key,
    required this.sourceType,
    required this.sourceName,
    required this.description,
    required this.statusText,
    required this.statusColor,
    required this.indicatorColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: ValueKey(sourceName), // unique per item
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (_) => debugPrint('Edit tapped'),
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            icon: Icons.edit,
            label: 'Edit',
          ),
          SlidableAction(
            onPressed: (_) => debugPrint('Delete tapped'),
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
          ),
        ],
      ),
      child: Card(
        elevation: 2,
        shadowColor: Colors.black.withOpacity(0.8),
        margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(
              color: Color.fromARGB(40, 117, 117, 117), // <─ border colour
              width: 2, //   border thickness
            )),
        color: Colors.white,
        child: AlertContent(
          sourceType: sourceType,
          sourceName: sourceName,
          description: description,
          statusText: statusText,
          statusColor: statusColor,
          indicatorColor: indicatorColor,
        ),
      ),
    );
  }
}
