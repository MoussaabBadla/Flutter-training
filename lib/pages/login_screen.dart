import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_appbar.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_textfield.dart';
import '../widgets/password_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static String routeName = '/login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: "Alunno"),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Connexion",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 50,
            ),
            CustomTextFormField(
              controller: _emailController,
            ),
            const SizedBox(
              height: 26,
            ),
            PasswordTextField(
              controller: _passwordController,
            ),
            const SizedBox(
              height: 80,
            ),
            CustomBotton(
              color: Colors.black,
              onPressed: () async {
                try {
                  final user = await auth.createUserWithEmailAndPassword(
                      email: _emailController.text,
                      password: _passwordController.text);

                  print(user);
                } catch (e) {
                  print(e);
                }
              },
              text: "Se connecter",
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Vous n\'avez pas de compte? ',
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontSize: 16,
                        fontWeight: FontWeight.w600)),
                TextButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          const EdgeInsets.all(2)),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'S’inscrire',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.black,
                          fontWeight: FontWeight.w600),
                    ))
              ],
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  print('Mot de passe oublié');
                },
                child: Text('Mot de passe oublié ?',
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontSize: 16,
                        fontWeight: FontWeight.w600)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
