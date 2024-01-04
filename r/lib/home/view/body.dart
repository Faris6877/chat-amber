import 'package:flutter/material.dart';

class MainPageBpdy extends StatefulWidget {
  const MainPageBpdy({super.key});

  @override
  State<MainPageBpdy> createState() => _MainPageBpdyState();
}

class _MainPageBpdyState extends State<MainPageBpdy> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      // body
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(
              3,
            ),
          ),
          color: Color.fromARGB(255, 0, 67, 112),
        ),
        padding: const EdgeInsets.all(13),
        margin: const EdgeInsets.all(5),
        width: double.maxFinite,
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, // Number of columns
              crossAxisSpacing: 10, // Spacing between tiles
              mainAxisSpacing: 10, // Spacing between rows
              childAspectRatio: 1 / 1, // Aspect ratio of the tiles
            ),
            itemCount: 13,
            itemBuilder: (context, index) {
              return Container(
                decoration: const BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      3,
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
