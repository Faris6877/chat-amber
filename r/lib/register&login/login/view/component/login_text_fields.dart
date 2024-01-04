
import 'package:flutter/material.dart';

class CostumLoginTextField extends StatefulWidget {
  const CostumLoginTextField({super.key});

  @override
  State<CostumLoginTextField> createState() => _CostumLoginTextFieldState();
}

class _CostumLoginTextFieldState extends State<CostumLoginTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(5),
            ),
            child: TextField(
              cursorColor: Colors.grey.shade600,
              cursorWidth: 5,
              cursorRadius: const Radius.circular(1),
              decoration: InputDecoration(
                hintStyle: TextStyle(
                  fontSize: 17,
                  color: Colors.grey.shade600,
                ),
                hintText: 'Email',
                suffixIcon: Icon(
                  Icons.email,
                  color: Colors.grey.shade600,
                  size: 21,
                ),
                border: InputBorder.none,
                contentPadding: const EdgeInsets.all(13),
              ),
            ),
          ),
          const SizedBox(height: 34),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(5),
            ),
            child: TextField(
              cursorColor: Colors.grey.shade600,
              decoration: InputDecoration(
                hintStyle: TextStyle(fontSize: 17, color: Colors.grey.shade600),
                hintText: 'Password',
                suffixIcon: Icon(
                  Icons.vpn_key,
                  color: Colors.grey.shade600,
                  size: 21,
                ),
                border: InputBorder.none,
                contentPadding: const EdgeInsets.all(13),
              ),
            ),
          ),
          const SizedBox(height: 34),

        ],
      ),
    );
  }
}
