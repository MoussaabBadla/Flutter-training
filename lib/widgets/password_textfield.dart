import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

bool isViseble = false;

class _PasswordTextFieldState extends State<PasswordTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: widget.controller,
        obscureText: !isViseble,
        decoration: InputDecoration(
          hintText: "Mot de passe",
          hintStyle: const TextStyle(color: Color(0xff757575), fontSize: 16),
          prefixIcon: const Icon(
            Icons.lock_outline,
            color: Color(0xff757575),
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
          fillColor: const Color(0xffF5F6FA),
          filled: true,
          suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isViseble = !isViseble;
                });
              },
              icon: Icon(
                isViseble ? Icons.visibility : Icons.visibility_off,
                color: const Color(0xff757575),
              )),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ));
  }
}
