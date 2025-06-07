import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:who_ebola/widgets/dashboard/alertinfo.dart';

class AlertCard extends StatelessWidget {
  const AlertCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: const ValueKey("first"),
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (context) {
              // Your edit logic here
              print("Edit tapped");
            },
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            icon: Icons.edit,
            label: 'Edit',
          ),
          SlidableAction(
            onPressed: (context) {
              // Your delete logic here
              print("Delete tapped");
            },
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
          ),
        ],
      ),
      child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Theme.of(context).colorScheme.primary,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          color: Theme.of(context).colorScheme.secondaryFixedDim,
          child: AlertInfo(
            name: "REZA",
            date: "21/5/22",
            time: "18:19",
            status: "Completed",
            description: "A sick fucking man in the hotel",
          )),
    );
  }
}
