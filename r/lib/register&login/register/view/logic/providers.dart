import 'package:cost_calc/register&login/register/view/logic/register_valedation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final emailFProvider = StateProvider<String>((ref) => '');
final isEmailValidProvider = Provider<bool>((ref) {
  final email = ref.watch(emailFProvider);
  var valedation = Validation();

  return valedation.isEmailValid(email);
});

final emailIconColorProvider = StateProvider<Color>((ref) {
  final emailLength = ref.watch(emailFProvider).length;
  final isValid = ref.watch(isEmailValidProvider);
  var valedation = Validation();

  return valedation.emailIconColorValedation(emailLength, isValid);
});
final emailIconElevationProvider = StateProvider<double>((ref) => 3);




final passwordProvider = StateProvider<String>((ref) => '');
final isPasswordValidProvider = Provider<bool>((ref) {
  final password = ref.watch(passwordProvider);
  var valedation = Validation();
  return valedation.isPasswordValid(password);
});

final passwordIconColorProvider = StateProvider<Color>((ref) {
  final passwordLength = ref.watch(passwordProvider).length;
  final isValid = ref.watch(isPasswordValidProvider);
  var valedation = Validation();

  return valedation.passwordIconColorValedation(passwordLength, isValid);
});
final passwordHiddenProvider = StateProvider<bool>((ref) => true);
final passwordIconElevationProvider = StateProvider<double>((ref) => 3);
final confirmPasswordProvider = StateProvider<String>((ref) => '');

final matchingPasword = Provider<bool>(
  (ref) {
    final resetPass = ref.watch(confirmPasswordProvider);
    final password = ref.watch(passwordProvider);
    var valedation = Validation();
    return valedation.isPasswordValid(resetPass) && resetPass == password
        ? true
        : false;
  },
);
final confirmPasswordIconColorProvider = StateProvider<Color>(
  (ref) {
    final resetPassLength = ref.watch(confirmPasswordProvider).length;
    final matching = ref.watch(matchingPasword);
    var valedation = Validation();

    return valedation.passwordIconColorValedation(resetPassLength, matching);
  },
);
final confirmPasswordIconElevationProvider = StateProvider<double>((ref) => 3);
// final elevationCrtProvider = Provider((ref) {
//   final email = ref.watch(emailIconElevationProvider.notifier).state;
//   final password = ref.watch(passwordIconElevationProvider.notifier).state;
//   final confirmPass =
//       ref.watch(confirmPasswordIconElevationProvider.notifier).state;
//   final elevationCrt = Validation().elevationController(
//     email: email,
//     password: password,
//     confirmPassword: confirmPass,
//   );
//   return elevationCrt;
// });
