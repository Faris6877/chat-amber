import 'package:cost_calc/register&login/register/controller/signup_user_crt.dart';
import 'package:cost_calc/register&login/register/data/registerd_user_data.dart';
import 'package:cost_calc/register&login/register/view/logic/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

final usersData = Provider<List<Map<String, dynamic>>>(
  (ref) => ref.watch(
    users,
  ),
);

final colorStatusProvider = StateProvider<bool>((ref) {
  final email = ref.watch(emailIconColorProvider.notifier).state;
  final password = ref.watch(passwordIconColorProvider.notifier).state;
  final confirmPassword =
      ref.watch(confirmPasswordIconColorProvider.notifier).state;
  return SignupUserController().valedationUserSignup(
    email: email,
    password: password,
    confirmPassword: confirmPassword,
  );
});
final userSignupProvider = StateProvider<Map<String, dynamic>>((ref) {
  final userEmail = ref.watch(emailFProvider.notifier).state;
  final userPassword = ref.watch(passwordProvider.notifier).state;
  final uuid = Uuid();
  final uid = uuid.v4();
  Map<String, dynamic> userModel = {
    "uid": uid,
    "userEmail": userEmail,
    "userPassword": userPassword,
  };

  return userModel;
});
