import 'package:flutter/material.dart';

final emailController = TextEditingController();
double registerCartLyout(BuildContext context, double mediaQ) {
  double cartSize = mediaQ * 0.9;
  if (mediaQ > 600) {
    cartSize = mediaQ * 0.55;

    if (mediaQ > 1000) {
      cartSize = mediaQ * 0.34;
      print(mediaQ);
    }
    return cartSize;
  }
  if (mediaQ < 350) {
    cartSize = 0;
    print(mediaQ);
  }
  print(mediaQ);
  return cartSize;
}
