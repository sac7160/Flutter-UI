import 'package:flutter/material.dart';
import '../profile/profile_screen.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, ProfileScreen.routeName);
    });

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          "NetFilx",
          style: TextStyle(
            color: Colors.red,
            fontSize: 50.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
