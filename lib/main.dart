import 'package:flutter/material.dart';
import 'package:spotify_clone/components/auth.dart';
import 'login.dart';
import 'signup.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Spotify Clone',
      theme: ThemeData.dark().copyWith(
        //primaryColor: Color(0xff388e3c),
        //accentColor: Color(0xff388e3c),
        //buttonColor: Color(0xff388e3c),
        //scaffoldBackgroundColor: Color(0xff00000e),
      ),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      routes: {
        '/login': (context) => LoginPage(),
        '/signup': (context) => RegisterPage(),
      },
    );
  }
}
