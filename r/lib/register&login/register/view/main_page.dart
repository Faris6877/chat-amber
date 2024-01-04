import 'package:cost_calc/register&login/register/view/register_body.dart';
import 'package:cost_calc/register&login/register/view/register_footer.dart';
import 'package:cost_calc/register&login/register/view/register_header.dart';
import 'package:flutter/material.dart';

class MainRegisterPage extends StatefulWidget {
  const MainRegisterPage({super.key});

  @override
  State<MainRegisterPage> createState() => _MainRegisterPageState();
}

class _MainRegisterPageState extends State<MainRegisterPage> {
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
                child: const RegisterHeader(),
              ),
              SizedBox(
                width: double.maxFinite,
                height: MediaQuery.of(context).size.height * 0.85,
                child: const RegisterBody(),
              ),
              SizedBox(
                width: double.maxFinite,
                height: MediaQuery.of(context).size.height * 0.075,
                child: const RegisterFooter(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
