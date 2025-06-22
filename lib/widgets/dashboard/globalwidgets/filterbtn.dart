import 'package:flutter/material.dart';

class FilterBtn extends StatefulWidget {
  FilterBtn({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FilterBtn();
  }
}

class _FilterBtn extends State<FilterBtn> {
  String selectedValue = "All";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        color: Colors.white,
        child: Card(
            shadowColor: Colors.black.withOpacity(0.8),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
                side: const BorderSide(
                  color: Color.fromARGB(40, 117, 117, 117), // <─ border colour
                  width: 2, //   border thickness
                )),
            color: Theme.of(context).colorScheme.primary.withOpacity(0.25),
            // margin: EdgeInsets.all(5),
            child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                  icon: const Visibility(
                    visible: false,
                    child: Icon(Icons.arrow_downward),
                  ),
                  value: selectedValue,
                  items: <String>[
                    'All',
                    'Not assigned',
                    'Assigend',
                    'In progress',
                    'Completed'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: TextStyle(fontSize: 12),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValue = newValue!;
                    });
                  },
                )))));
  }
}
