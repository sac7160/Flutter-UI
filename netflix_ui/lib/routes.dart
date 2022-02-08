import 'package:flutter/material.dart';
import 'package:netflix_ui/screens/main_screens.dart';
import 'screens/profile/profile_screen.dart';
import 'screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> route = {
  SplashScreen.routeName: (context) => SplashScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  MainScreens.routeName: (context) => MainScreens(),
};