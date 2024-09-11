import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/Theme/Themo_provider.dart';
import 'package:untitled1/auth/login_register.dart';
import 'package:untitled1/components/my_Drawer.dart';
import 'package:untitled1/models/restaurant.dart';
import 'package:untitled1/pages/Login_page.dart';
import 'package:untitled1/pages/Register_Page.dart';
import 'package:untitled1/pages/home_page.dart';
import 'package:untitled1/pages/settting_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
        //Theme provider
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
        ),
        //restaurant provider
        ChangeNotifierProvider(
          create: (context) => Restaurant(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginRegister(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
