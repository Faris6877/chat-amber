import 'package:cost_calc/register&login/register/view/main_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginFooter extends StatefulWidget {
  const LoginFooter({super.key});

  @override
  State<LoginFooter> createState() => _LoginFooterState();
}

class _LoginFooterState extends State<LoginFooter> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Dont have an account? ",
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.bold,
            color: Colors.grey.shade400,
          ),
        ),
        InkWell(
          onTap: () => Get.offAll(() => const MainRegisterPage()),
          child: Text(
            "Register",
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
              color: Colors.amber.shade600,
            ),
          ),
        ),
      ],
    );
  }
}
