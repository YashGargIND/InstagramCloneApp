import 'package:flutter/material.dart';
import 'package:instagram/pages/login.dart';
import 'package:instagram/pages/loginpage.dart';
import 'package:instagram/pages/signup.dart';
import 'package:instagram/pages/Home.dart';
import 'package:instagram/pages/dm.dart';
import 'package:instagram/pages/profile.dart';
import 'package:instagram/pages/search.dart';


void main() {
  runApp(MaterialApp(
    home: Login(),
    routes: {
      '/Login' : (_) => Login(),
      '/LoginPage' : (_) => Loginpage(),
      '/Signup' : (_) => Signup(),
      '/Home' : (_) => Home(),
      '/DM' : (_) => DM(),
      '/Search' : (_) => Search(),
      '/Profile' : (_) => Profile(),
    },
  ));
}

