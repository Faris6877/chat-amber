import 'package:cost_calc/register&login/register/controller/providers.dart';
import 'package:cost_calc/register&login/register/data/registerd_user_data.dart';
import 'package:cost_calc/register&login/register/view/component/register_text_field.dart';
import 'package:cost_calc/register&login/register/view/logic/register_body_logic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RegisterBody extends StatefulWidget {
  const RegisterBody({super.key});

  @override
  State<RegisterBody> createState() => _RegisterBodyState();
}

class _RegisterBodyState extends State<RegisterBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        color: Colors.amber.shade600,

        // child: Container(
        //   color: Colors.white,
        //   width: 10,
        //   height: 10,
        // ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: registerCartLyout(
                context,
                MediaQuery.of(context).size.width,
              ),
              height: 450,
              child: Card(
                color: Colors.white,
                elevation: 5,
                shadowColor: Colors.amber.shade600,
                child: SizedBox(
                  width: double.maxFinite,
                  height: double.maxFinite,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Row(
                            children: [
                              Text(
                                "R",
                                style: TextStyle(
                                  fontSize: 55,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.amber.shade600,
                                ),
                              ),
                              Text(
                                "egister",
                                style: TextStyle(
                                  fontSize: 34,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey.shade400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(child: Container()),
                      const CostumRegisterTextField(),
                      Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Center(
                          child: Consumer(builder: (context, ref, child) {
                            final chicking = ref.watch(colorStatusProvider);
                            final dataStoreg = ref.watch(users.notifier).state;

                            return TextButton(
                              onPressed: () {
                                if (chicking) {
                                  final user = ref
                                      .watch(userSignupProvider.notifier)
                                      .state;
                                  dataStoreg.add(user);
                                  print(dataStoreg);
                                }
                              },
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey.shade600,
                                ),
                              ),
                            );
                          }),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
