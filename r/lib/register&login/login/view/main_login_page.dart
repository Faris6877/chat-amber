import 'package:flutter/material.dart';

import 'login_body.dart';
import 'login_footer.dart';
import 'login_header.dart';

class MainLoginPage extends StatefulWidget {
  const MainLoginPage({super.key});

  @override
  State<MainLoginPage> createState() => _MainLoginPageState();
}

class _MainLoginPageState extends State<MainLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        color: Colors.grey.shade200,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                width: double.maxFinite,
                height: MediaQuery.of(context).size.height * 0.075,
                child: const LoginHeader(),
              ),
              SizedBox(
                width: double.maxFinite,
                height: MediaQuery.of(context).size.height * 0.85,
                child: const LoginBody(),
              ),
              SizedBox(
                width: double.maxFinite,
                height: MediaQuery.of(context).size.height * 0.075,
                child: const LoginFooter(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
