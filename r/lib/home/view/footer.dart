import 'package:flutter/material.dart';

class MainPageFooter extends StatefulWidget {
  const MainPageFooter({super.key});

  @override
  State<MainPageFooter> createState() => _MainPageFooterState();
}

class _MainPageFooterState extends State<MainPageFooter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // footer
      alignment: Alignment.bottomCenter,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(
            5,
          ),
        ),
        color: Color.fromARGB(255, 0, 132, 123),
      ),
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(8),
      width: double.maxFinite,
      height: MediaQuery.of(context).size.height * 0.085,
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.all(3),
            child: Text(
              "####",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.amber,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5),
            child: Text(
              "####",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.amber,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5),
            child: Text(
              "####",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.amber,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5),
            child: Text(
              "####",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.amber,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
