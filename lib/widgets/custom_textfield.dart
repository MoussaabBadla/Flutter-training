import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: const InputDecoration(
      hintText: "Adresse mail personnelle",
      hintStyle: TextStyle(color: Color(0xff757575), fontSize: 16),
      prefixIcon: Icon(
        Icons.mail_outline,
        color: Color(0xff757575),
      ),
      fillColor: Color(0xffF5F6FA),
      filled: true,
      contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 10),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
      ),
    ));
  }
}

