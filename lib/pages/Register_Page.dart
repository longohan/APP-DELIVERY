import 'package:flutter/material.dart';

import '../components/my_Button.dart';
import '../components/my_TextField.dart';

class register_Page extends StatefulWidget {
final void Function()? Ontap;

  const register_Page({
    super.key,
    required this.Ontap,
  });

  @override
  State<register_Page> createState() => _register_PageState();
}

class _register_PageState extends State<register_Page> {
  // text editing controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmpasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Logo
            Icon(
              Icons.lock_clock_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(
              height: 16,
            ),
            //message, app slogan
            Text(
              "Let's create an account for you",
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            //email textfield
            MyTextfield(
              controller: emailController,
              hintText: 'Email',
              obscureText: false,
            ),
            //password textfield
            MyTextfield(
              controller: passwordController,
              hintText: 'Password',
              obscureText: true,
            ),
            //confirmpassword
            MyTextfield(
              controller: confirmpasswordController,
              hintText: 'Password',
              obscureText: true,
            ),
            //sign in button
            MyButton(
              text: 'Sign In',
              Ontap: () {},
            ),
            const SizedBox(height: 20),
            //not a member? register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Alright have account?",
                  style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
                ),
                SizedBox(height: 16),
                
                GestureDetector(
                  onTap: widget.Ontap,
                  child: Text(
                    "Sign in now",
                    style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
