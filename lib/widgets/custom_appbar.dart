import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, this.child, required this.title});
  final Widget? child;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/Appbar.png"),
        Positioned(
          top: 60,
          left: 20,
          child: Text(title,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 48,
                  fontWeight: FontWeight.bold)),
        ),
        if (child != null) Positioned(top: 80, left: 20, child: child!)
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(200);
}
