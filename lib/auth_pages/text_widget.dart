import 'package:flutter/material.dart';


class ExtractedTextWidget extends StatelessWidget {

  final String hintText;
  final controller;
  bool obscureText;
  ExtractedTextWidget({required this.hintText, required this.controller, required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.white
        ),
        obscureText: obscureText,
        controller: controller,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.grey[500],
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.teal)
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.white54)
            ),
        ),
      ),
    );
  }
}