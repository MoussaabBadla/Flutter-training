import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sbc_app/pages/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final auth = FirebaseAuth.instance;
  final firestore = FirebaseFirestore.instance.collection('user');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routes: {
          "/register": (context) => const LoginScreen(),
        },
        home: StreamBuilder(
            stream: auth.authStateChanges(),
            builder: (context, snapshot) {
              return auth.currentUser == null
                  ? LoginScreen()
                  : Scaffold(
                      body: StreamBuilder(
                          stream: firestore.snapshots(),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              return ListView(
                                  children: snapshot.data!.docs
                                      .map((e) => Text(
                                            "${e['username']} ",
                                            style: const TextStyle(
                                                fontSize: 32,
                                                fontWeight: FontWeight.w500),
                                          ))
                                      .toList());
                            }
                            return const Center(
                                child: CircularProgressIndicator());
                          }),
                    );
            }));
  }
}
