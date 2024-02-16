import 'package:flutter/material.dart';
import 'package:flutter_chat_app/components/components.dart';
import 'package:flutter_chat_app/utils/extensions.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                  "Welcome! Let's create a new account for you",
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

                20.pv,

                //confirm password textform field
                MyTextFormField(
                  hinText: 'Confirm Password',
                  isObscureText: true,
                  controller: passwordController,
                ),

                30.pv,

                //sign in button
                MyButton(
                  title: 'Register',
                  onTap: () {},
                ),

                30.pv,

                //not a member
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already a Member? '),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: const Text(
                        'Login',
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
