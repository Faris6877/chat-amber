import 'package:flutter/material.dart';

class Validation {
  bool isEmailValid(String email) {
    final emailRegex =
        RegExp(r"^[a-zA-Z0-9.+_-]+@[a-zA-Z0-9.-]+\.[a-zA-Z0-9]+$");
    return email.isNotEmpty && emailRegex.hasMatch(email);
  }

  bool isPasswordValid(String password) {
    final passwordRegex = RegExp(
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$',
    );
    return password.isNotEmpty && passwordRegex.hasMatch(password);
  }

  Color emailIconColorValedation(int emailLengthe, bool isValid) {
    return emailLengthe > 8 && isValid
        ? Colors.amber.shade600
        : const Color.fromARGB(255, 227, 0, 0);
  }

  Color passwordIconColorValedation(int passwordLengthe, bool isValid) {
    return passwordLengthe > 8 && isValid
        ? Colors.amber.shade600
        : const Color.fromARGB(255, 227, 0, 0);
  }

  double elevationController({
    required double email,
    required double password,
    required double confirmPassword,
  }) {
    double elevation = 0.0;
    if (email > 3) {
      confirmPassword = 3;
      password = 3;
      elevation = email;
    }
    if (confirmPassword > 3) {
      password = 3;
      email = 3;
      elevation = confirmPassword;
    }
    if (password > 3) {
      confirmPassword = 3;
      email = 3;
      elevation = password;
    }
    return elevation;
  }
}
