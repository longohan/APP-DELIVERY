import 'package:flutter/material.dart';
import 'package:untitled1/pages/Login_page.dart';
import 'package:untitled1/pages/Register_Page.dart';

class LoginRegister extends StatefulWidget {
  const LoginRegister({super.key});

  @override
  State<LoginRegister> createState() => _LoginRegisterState();
}

class _LoginRegisterState extends State<LoginRegister> {
  bool ShowLoginPage = true;
  void togglePages()
  {
    setState(() {
      ShowLoginPage = !ShowLoginPage;
    });
  }
  @override
  Widget build(BuildContext context) {
   if(ShowLoginPage)
     {
       return login_Page(Ontap: togglePages);
     }else
       {
         return register_Page(Ontap: togglePages);
       }
  }
}
