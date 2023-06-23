import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../widgets/custom_button.dart';
import '../widgets/first_page_widgets.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Column(
        children: [
          Image.asset(firstPageImage),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Bienvenu\nsur Alunno",
                  style: TextStyle(
                      height: 1,
                      color: Colors.white,
                      fontSize: 45,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 15),
                const Text(
                  "Tout ce dont vous aurez besoin pour rendre votre vie étudiante plus facile et accroître votre productivité",
                  style: kTextStyle,
                ),
                const SizedBox(height: 30),
                CustomBotton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, "/register", (route) => false);
                  },
                  color: kSecondaryColor,
                  text: "Rejoignez maintenant",
                  borderRadius: 20,
                ),
                const SizedBox(height: 5),
                const ConnectionButton()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
