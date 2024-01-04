import 'package:flutter/material.dart';

class MainPageHeader extends StatefulWidget {
  const MainPageHeader({super.key});

  @override
  State<MainPageHeader> createState() => _MainPageHeaderState();
}

class _MainPageHeaderState extends State<MainPageHeader> {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: Object(),
      child: Container(
        // header
        height: MediaQuery.of(context).size.height * 0.075,
        width: double.maxFinite,
        alignment: Alignment.topCenter,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(
              5,
            ),
          ),
          color: Colors.amber,
        ),
        padding: const EdgeInsets.all(13),
        margin: const EdgeInsets.all(5),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "*****",
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 67, 112),
              ),
            ),
            Row(
              children: [],
            )
          ],
        ),
      ),
    );
  }
}
