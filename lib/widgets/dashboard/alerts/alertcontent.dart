// lib/widgets/alert_content.dart
import 'package:flutter/material.dart';

/// Pure layout widget that draws the inside of an alert card.
class AlertContent extends StatelessWidget {
  final String sourceType;
  final String sourceName;
  final String description;
  final String statusText;
  final Color statusColor;
  final Color indicatorColor;

  const AlertContent({
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
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ── Header row: who/where + badge ────────────────────────────────
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // “Alert by: Dr. Chen” or “Location: City Hospital”
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(sourceType,
                      style: TextStyle(fontSize: 14, color: Colors.grey[600])),
                  const SizedBox(height: 2),
                  Text(sourceName,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold)),
                ],
              ),
              const Spacer(),

              // Status badge (HIGH PRIORITY, AWAS, etc.)
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: statusColor.withOpacity(.15),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  statusText.toUpperCase(),
                  style: TextStyle(
                      color: statusColor,
                      fontSize: 11,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),

          // Divider
          Divider(color: Colors.grey.shade200, thickness: 1),
          const SizedBox(height: 12),

          // ── Description row with coloured dot ────────────────────────────
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 6, right: 8),
                child: CircleAvatar(radius: 4, backgroundColor: indicatorColor),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Description',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87)),
                    const SizedBox(height: 4),
                    Text(description,
                        style:
                            TextStyle(fontSize: 14, color: Colors.grey[700])),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
