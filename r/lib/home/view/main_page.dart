import 'package:cost_calc/home/view/body.dart';
import 'package:cost_calc/home/view/footer.dart';
import 'package:cost_calc/home/view/header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: const Column(
        children: [
          MainPageHeader(),
          MainPageBpdy(),
         MainPageFooter(),],
      ),
    );
  }
}
