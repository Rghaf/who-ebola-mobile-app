import 'package:flutter/material.dart';
import 'package:who_ebola/widgets/login/googleBtn.dart';
import 'package:who_ebola/widgets/login/logininput.dart';
import 'package:who_ebola/widgets/login/switchformlinks.dart';

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
  String formMode = "login";

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
        // if (formMode == "forget")
        //   LoginInput(
        //     fieldLabel: "Enter your email to reset password",
        //     fieldType: TextInputType.emailAddress,
        //     onChanged: widget.handleLoginForm,
        //   ),
        Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: ElevatedButton(
            onPressed: widget.handleLoginFormSubmit,
            style: const ButtonStyle(
              padding: WidgetStatePropertyAll(
                EdgeInsets.symmetric(vertical: 10, horizontal: 50),
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
        ),
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
