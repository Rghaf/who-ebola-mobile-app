import 'dart:ffi';

import 'package:flutter/material.dart';

class LoginBtn extends StatelessWidget {
  const LoginBtn(
      {super.key, required this.formMode, required this.submitFunction});

  final String formMode;
  final void Function() submitFunction;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, // or a fixed width like 300
      child: ElevatedButton(
        onPressed: submitFunction,
        style: const ButtonStyle(
          shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
          ),
          padding: WidgetStatePropertyAll(
            EdgeInsets.symmetric(vertical: 20),
          ),
        ),
        child: Text(
          formMode == "login"
              ? "Login"
              : formMode == "register"
                  ? "Register"
                  : "Send Reset Link",
        ),
      ),
    );
  }
}
