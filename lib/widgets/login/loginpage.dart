import 'package:flutter/material.dart';
import 'package:who_ebola/widgets/chatgpt/chatgpt.dart';
import 'package:who_ebola/widgets/dashboard/dashboard.dart';
import 'package:who_ebola/widgets/login/loginform.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() {
    return _Login();
  }
}

class _Login extends State<Login> {
  String _name = "";
  String _email = "";
  String _password = "";
  String _confirmPassword = "";

  void _handleEmail(String value) {
    setState(() {
      _email = value;
    });
  }

  void _submitForm() {
    print("LOGIN PRESSED!");
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Dashboard()));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.asset('assets/Logo.png', height: 88),
        ),
        const SizedBox(height: 20),
        LoginForm(
          handleLoginForm: _handleEmail,
          handleLoginFormSubmit: _submitForm,
        ),
      ],
    );
  }
}
