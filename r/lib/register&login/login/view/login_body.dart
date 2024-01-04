import 'package:flutter/material.dart';

import '../../register/view/logic/register_body_logic.dart';
import 'component/login_text_fields.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
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
              height: 400,
              child: Card(
                color: Colors.white,
                elevation: 3,
                shadowColor: Colors.amber.shade600,
                child: SizedBox(
                  width: double.maxFinite,
                  height: double.maxFinite,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: Row(
                            children: [
                              Text(
                                "L",
                                style: TextStyle(
                                  fontSize: 55,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.amber.shade600,
                                ),
                              ),
                              Text(
                                "ogin",
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
                      const CostumLoginTextField(),
                      Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Center(
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Login",
                              style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade600,
                              ),
                            ),
                          ),
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
