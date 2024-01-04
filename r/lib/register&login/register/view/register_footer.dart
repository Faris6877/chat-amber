import 'package:cost_calc/register&login/login/view/main_login_page.dart';
import 'package:cost_calc/register&login/register/view/logic/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';

class RegisterFooter extends StatefulWidget {
  const RegisterFooter({super.key});

  @override
  State<RegisterFooter> createState() => _RegisterFooterState();
}

class _RegisterFooterState extends State<RegisterFooter> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Do you already have an account? ",
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.bold,
            color: Colors.grey.shade400,
          ),
        ),
        Consumer(builder: (context, ref, child) {
          final emailIconColor = ref.watch(emailIconColorProvider.notifier);
          final emailIconElevation =
              ref.watch(emailIconElevationProvider.notifier);
          final passwordIconColor =
              ref.watch(passwordIconColorProvider.notifier);
          final passwordElevation =
              ref.watch(passwordIconElevationProvider.notifier);
          final passwordConfirmIconColor =
              ref.watch(confirmPasswordIconColorProvider.notifier);
          final confirmPasswordElevation =
              ref.watch(confirmPasswordIconElevationProvider.notifier);
          return InkWell(
            onTap: () {
              emailIconElevation.state = 3;
              passwordElevation.state = 3;
              confirmPasswordElevation.state = 3;
              emailIconColor.state = Colors.red;
              passwordIconColor.state = Colors.red;
              passwordConfirmIconColor.state = Colors.red;
              emailIconColor.state = Colors.red;
              Get.offAll(() => const MainLoginPage());
            },
            child: Text(
              "Login",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Colors.amber.shade600,
              ),
            ),
          );
        }),
      ],
    );
  }
}
