import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:massagea/register_screen.dart';
import 'package:massagea/welcome_screen.dart';
import 'chat_screen.dart';
import 'login_screen.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
      ),
      initialRoute: WelcomePage.id,
      routes: {
        WelcomePage.id: (context)=> WelcomePage(),
        LoginPage.id: (context)=> LoginPage(),
        RegisterPage.id: (context)=> RegisterPage(),
        ChatScreen.id:(context)=>ChatScreen(),
      },
    );
  }
}
