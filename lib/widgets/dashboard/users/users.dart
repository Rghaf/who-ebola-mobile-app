import 'package:flutter/material.dart';
import 'package:who_ebola/widgets/dashboard/globalwidgets/filterbtn.dart';
import 'package:who_ebola/widgets/dashboard/users/usercard.dart';

class Users extends StatefulWidget {
  const Users({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Users();
  }
}

class _Users extends State<Users> {
  final List<Map<String, String>> _users = const [
    {'name': 'Reza', 'date': 'Joined Jan 2 2023', 'role': 'Admin'},
    {'name': 'Bob', 'date': 'Joined Feb 14 2023', 'role': 'Moderator'},
    {'name': 'Charlie', 'date': 'Joined Mar 7 2023', 'role': 'Member'},
    {'name': 'Diana', 'date': 'Joined Apr 21 2023', 'role': 'Member'},
    {'name': 'Evan', 'date': 'Joined May 30 2023', 'role': 'Member'},
    {'name': 'Fiona', 'date': 'Joined Jun 12 2023', 'role': 'Moderator'},
    {'name': 'George', 'date': 'Joined Jul 9 2023', 'role': 'Member'},
    {'name': 'Helen', 'date': 'Joined Aug 18 2023', 'role': 'Admin'},
    {'name': 'Ian', 'date': 'Joined Sep 1 2023', 'role': 'Member'},
    {'name': 'Jane', 'date': 'Joined Oct 25 2023', 'role': 'Member'},
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: [
      Row(children: [
        FilterBtn(),
        const SizedBox(
          width: 20,
        ),
        const Expanded(
            child: Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      icon: Icon(Icons.search), label: Text("Filter by name")),
                )))
      ]),
      Expanded(
          child: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: _users.length,
        itemBuilder: (context, index) {
          final user = _users[index];
          return UserCard(user: user);
        },
      ))
    ]);
  }
}
