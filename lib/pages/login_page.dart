import 'package:flutter/material.dart';
import 'package:flutter_chat_app/components/components.dart';
import 'package:flutter_chat_app/utils/extensions.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //logo
                const Icon(
                  Icons.message,
                  size: 80,
                ),

                30.pv,

                //welcome message
                const Text(
                  'Welcome back! Please login to your account',
                  style: TextStyle(fontSize: 16),
                ),

                30.pv,

                //email textform field
                MyTextFormField(
                  hinText: 'Email',
                  isObscureText: false,
                  controller: emailController,
                ),

                20.pv,

                //password textform field
                MyTextFormField(
                  hinText: 'Password',
                  isObscureText: true,
                  controller: passwordController,
                ),

                30.pv,

                //sign in button
                MyButton(
                  title: 'Sing In',
                  onTap: () {},
                ),

                30.pv,

                //not a member
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Not a Member? '),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: const Text(
                        'Register',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
