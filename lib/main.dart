import 'package:flutter/material.dart';
import 'package:tradexapp/authscreen.dart';

//-----------------------------------------
import 'package:tradexapp/homescreen.dart';
//-----------------------------------------
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (Buildcontext, usersnapshot) {
            if (usersnapshot.hasData) {
              return HomeScreen();
            } else {
              return AuthScreen();
            }
          }),
    );
  }
}
