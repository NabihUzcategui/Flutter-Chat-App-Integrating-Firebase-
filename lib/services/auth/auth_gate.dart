import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_app/services/login_or_register_page.dart';

import '../../pages/pages.dart';

class AuthGate extends StatefulWidget {
  const AuthGate({super.key});

  @override
  State<AuthGate> createState() => _AuthGateState();
}

class _AuthGateState extends State<AuthGate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          //if user is logged in then go to HomePage
          if (snapshot.hasData) {
            return const HomePage();
          }
          //else go to the LoginOrRegisterPage
          else {
            return const LoginOrRegisterPage();
          }
        },
      ),
    );
  }
}
