import 'package:cost_calc/register&login/register/model/user_model.dart';
import 'package:flutter/material.dart';

class SignupUserController {


  bool valedationUserSignup({
    required Color email,
    required Color password,
    required Color confirmPassword,
  }) {
    return email == Colors.amber.shade600 &&
            password == Colors.amber.shade600 &&
            confirmPassword == Colors.amber.shade600
        ? true
        : false;
  }

Map<String, dynamic> userSignup({
    required String uid,
    required String userName,
    required String userPassword,
    required String userPasswordConfirm,
  })  {
    final userModel = UserModel(
      uid: uid,
      userName: userName,
      userPassword: userPassword,
      userConfirmPassword: userPasswordConfirm,
    );
    return userModel.toMap();
  }
}
