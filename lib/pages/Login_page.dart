import 'package:flutter/material.dart';
import 'package:untitled1/components/my_Button.dart';
import 'package:untitled1/components/my_TextField.dart';
import 'package:untitled1/pages/home_page.dart';

class login_Page extends StatefulWidget {
  final void Function()? Ontap;

  const login_Page({
    super.key,
    required this.Ontap,
  });

  @override
  State<login_Page> createState() => _login_PageState();
}

class _login_PageState extends State<login_Page> {
  // text editing controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

//Home method
  void login() {
    //fill out authetication here...

    //navigate to home page
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Home_Page(),
        ));
  }

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
            const SizedBox(height: 10),
            //message, app slogan
            Text(
              "FoodMeal",
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 10),
            //email textfield
            MyTextfield(
              controller: emailController,
              hintText: 'Email',
              obscureText: false,
            ),
            SizedBox(
              height: 10,
            ),
            //password textfield
            MyTextfield(
              controller: passwordController,
              hintText: 'Password',
              obscureText: true,
            ),
            const SizedBox(
              height: 15,
            ),
            //sign in button
            MyButton(
              text: 'Sign In',
              Ontap: () {
                login();
              },
            ),
            const SizedBox(height: 10),
            //not a member? register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a member?",
                  style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: widget.Ontap,
                  child: Text(
                    "Register now",
                    style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary, fontWeight: FontWeight.bold),
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
