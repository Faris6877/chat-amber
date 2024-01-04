import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../logic/providers.dart';

class CostumRegisterTextField extends StatefulWidget {
  const CostumRegisterTextField({super.key});

  @override
  State<CostumRegisterTextField> createState() =>
      _CostumRegisterTextFieldState();
}

class _CostumRegisterTextFieldState extends State<CostumRegisterTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer(
            builder: (context, ref, child) {
              final emailF = ref.watch(emailFProvider.notifier);
              final emailIconColor = ref.watch(emailIconColorProvider);
              final emailIconElevation =
                  ref.watch(emailIconElevationProvider.notifier);
              final passwordElevation =
                  ref.watch(passwordIconElevationProvider.notifier);
              final confirmPasswordElevation =
                  ref.watch(confirmPasswordIconElevationProvider.notifier);
              return Card(
                elevation: emailIconElevation.state,
                color: Colors.grey.shade200,
                shadowColor: emailIconColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3),
                ),
                child: TextField(
                  onTap: () {
                    emailIconElevation.state = 8;
                    passwordElevation.state = 3;
                    confirmPasswordElevation.state = 3;
                    setState(() {});
                  },
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) => emailF.state = value,
                  cursorColor: Colors.grey.shade500,
                  cursorWidth: 5,
                  cursorRadius: const Radius.circular(1),
                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                      fontSize: 17,
                      color: Colors.grey.shade500,
                    ),
                    hintText: 'Email',
                    suffixIcon: Icon(
                      Icons.email,
                      color: emailIconColor,
                      size: 21,
                    ),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.all(13),
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 34),
          Consumer(
            builder: (context, ref, child) {
              final password = ref.watch(passwordProvider.notifier);
              final passwordIconColor = ref.watch(passwordIconColorProvider);
              final x = ref.watch(passwordHiddenProvider.notifier);
              final passwordIconElevation =
                  ref.watch(passwordIconElevationProvider.notifier);
              final emailIconElevation =
                  ref.watch(emailIconElevationProvider.notifier);
              final passwordElevation =
                  ref.watch(passwordIconElevationProvider.notifier);
              final confirmPasswordElevation =
                  ref.watch(confirmPasswordIconElevationProvider.notifier);
              return Card(
                elevation: passwordIconElevation.state,
                color: Colors.grey.shade200,
                shadowColor: passwordIconColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3),
                ),
                child: TextField(
                  onTap: () {
                    emailIconElevation.state = 3;
                    passwordElevation.state = 8;
                    confirmPasswordElevation.state = 3;
                    setState(() {});
                  },
                  onChanged: (value) => password.state = value,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: x.state,
                  cursorColor: Colors.grey.shade600,
                  decoration: InputDecoration(
                    hintStyle:
                        TextStyle(fontSize: 17, color: Colors.grey.shade500),
                    hintText: 'Password',
                    suffixIcon: IconButton(
                      onPressed: () {
                        x.state = !x.state;
                        setState(() {});
                      },
                      icon: const Icon(
                        Icons.vpn_key,
                        size: 21,
                      ),
                      color: passwordIconColor,
                    ),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.all(13),
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 34),
          Consumer(builder: (context, ref, child) {
            final confirmPassValue =
                ref.watch(confirmPasswordProvider.notifier);
            final confirmPassIconColor =
                ref.watch(confirmPasswordIconColorProvider);
            final confirmIconElevation =
                ref.watch(confirmPasswordIconElevationProvider.notifier);
            final emailIconElevation =
                ref.watch(emailIconElevationProvider.notifier);
            final passwordElevation =
                ref.watch(passwordIconElevationProvider.notifier);
            final confirmPasswordElevation =
                ref.watch(confirmPasswordIconElevationProvider.notifier);
            return Card(
              elevation: confirmIconElevation.state,
              color: Colors.grey.shade200,
              shadowColor: confirmPassIconColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3),
              ),
              child: TextField(
                onTap: () {
                  emailIconElevation.state = 3;
                  passwordElevation.state = 3;
                  confirmPasswordElevation.state = 8;
                  setState(() {});
                },
                onChanged: (value) => confirmPassValue.state = value,
                cursorColor: Colors.grey.shade600,
                decoration: InputDecoration(
                  hintStyle:
                      TextStyle(fontSize: 17, color: Colors.grey.shade500),
                  hintText: 'Confirm Password ',
                  suffixIcon: Icon(
                    Icons.vpn_key,
                    color: confirmPassIconColor,
                    size: 21,
                  ),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.all(13),
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
