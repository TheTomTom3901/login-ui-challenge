import 'package:flutter/material.dart';
import 'package:login_page_ui_challenge/login_page.dart';
import 'package:login_page_ui_challenge/registration_page.dart';

void main() => runApp(StarterApp());

const primaryColour = Color(0xFF5364E8);
const secondaryColour = Color(0xFF7885FD);

class StarterApp extends StatelessWidget {
  const StarterApp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login UI Challenge',
      initialRoute: 'login',
      routes: {
        'login': (context) => const LoginPage(),
        'register': (context) => const RegisterPage(),
      },
      theme: ThemeData(
        primaryColor: primaryColour,
        accentColor: secondaryColour,
        scaffoldBackgroundColor: primaryColour,
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.white),
          subhead: TextStyle(color: Colors.white),
        ),
        pageTransitionsTheme: PageTransitionsTheme(
          builders: {
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
          }
        )
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
