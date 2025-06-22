import 'package:flutter/material.dart';
import 'package:who_ebola/widgets/login/googleBtn.dart';
import 'package:who_ebola/widgets/login/loginbtn.dart';
import 'package:who_ebola/widgets/login/logininput.dart';
import 'package:who_ebola/widgets/login/switchformlinks.dart';

//This widget is Form that apeears in the login and register page
// with multiple different inputs filds.
class LoginForm extends StatefulWidget {
  const LoginForm({
    super.key,
    required this.handleLoginForm,
    required this.handleLoginFormSubmit,
  });

  final void Function(String) handleLoginForm;
  final void Function() handleLoginFormSubmit;

  @override
  State<LoginForm> createState() => _LoginForm();
}

class _LoginForm extends State<LoginForm> {
  // This variable shows wich type of form is requested
  String formMode = "login";

  //Chnage the formMode and by changing that, the type of form will change
  void _setFormMode(String mode) {
    setState(() {
      formMode = mode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        //Show the input fields of form based on what is the mode(login, register, etc.)
        if (formMode == "register") ...[
          LoginInput(
            fieldLabel: "Name",
            fieldType: TextInputType.name,
            onChanged: widget.handleLoginForm,
          ),
          const SizedBox(height: 20),
        ],
        if (formMode == "login" ||
            formMode == "register" ||
            formMode == "forget") ...[
          LoginInput(
            fieldLabel: "Email Address",
            fieldType: TextInputType.emailAddress,
            onChanged: widget.handleLoginForm,
          ),
          const SizedBox(height: 20),
        ],
        if (formMode == "login" || formMode == "register") ...[
          LoginInput(
            fieldLabel: "Password",
            fieldType: TextInputType.text,
            onChanged: widget.handleLoginForm,
          ),
          const SizedBox(height: 20),
        ],
        if (formMode == "register") ...[
          LoginInput(
            fieldLabel: "Confirm Password",
            fieldType: TextInputType.text,
            onChanged: widget.handleLoginForm,
          ),
          const SizedBox(height: 20),
        ],
        // Button for submit the form is here
        Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: LoginBtn(
                formMode: formMode,
                submitFunction: widget.handleLoginFormSubmit)),
        const Row(
          children: [
            Expanded(child: Divider(thickness: 1)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text("Or"),
            ),
            Expanded(child: Divider(thickness: 1)),
          ],
        ),
        GooogleBtn(svgNumber: 0),
        // Change the formMode
        SwitchFormLinks(
          firstLink: formMode == "login" ? "Register" : "Login",
          secondLink: formMode != "forget"
              ? "Forget"
              : formMode == "forget"
                  ? "Register"
                  : "Login",
          onLinkPressed: _setFormMode,
        )
      ],
    );
  }
}
