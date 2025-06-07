import 'package:flutter/material.dart';

class LoginInput extends StatelessWidget {
  const LoginInput(
      {required this.fieldLabel,
      required this.fieldType,
      required this.onChanged,
      super.key});

  final String fieldLabel;
  final TextInputType fieldType;
  final void Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
        textAlignVertical: TextAlignVertical.center,
        keyboardType: fieldType,
        onChanged: onChanged,
        obscureText: fieldLabel == "Password" ? true : false,
        decoration: InputDecoration(
            label: Text(fieldLabel),
            // floatingLabelStyle:
            //     const TextStyle(color: Color.fromARGB(212, 0, 0, 0)),
            // floatingLabelBehavior: FloatingLabelBehavior.never,
            filled: true,
            // fillColor: const Color.fromARGB(78, 158, 158, 158),
            // focusColor: MyColors.c3,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              // borderSide: const BorderSide(color: MyColors.c1, width: 2.0)
            ),
            focusedBorder: OutlineInputBorder(
              // borderSide: const BorderSide(color: MyColors.c3, width: 2.0),
              borderRadius: BorderRadius.circular(25.0),
            )));
  }
}
