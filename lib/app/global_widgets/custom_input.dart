import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomInput extends StatelessWidget {
  final String label;
  final TextEditingController? controller;
  final IconData icon;
  final bool obscureText;
  final Function(String)? onChange;
  const CustomInput(
      {Key? key,
      required this.label,
      this.controller,
      required this.icon,
      this.obscureText = false,
      this.onChange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.9,
      child: TextField(
        onChanged: onChange,
        autocorrect: true,
        obscureText: obscureText,
        controller: controller,
        decoration: InputDecoration(
          label: Text(label),
          prefixIcon: Icon(icon),
          hintStyle: TextStyle(color: Colors.grey),
          filled: true,
          fillColor: Colors.white70,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
            borderSide: BorderSide(color: Colors.deepPurple, width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(color: Colors.deepPurple, width: 2),
          ),
        ),
      ),
    );
  }
}
