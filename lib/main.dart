import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:recipe_app/Theme/theme_colors.dart';
import 'package:recipe_app/screens/home_screen.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Recipe',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: ThemeColor().mycolor,
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Homescreen()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    const spinkit = SpinKitWave(
      color: Color(0xFFF2AE3B),
      size: 50.0,
    );
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          ThemeColor().mycolor,
          const Color(0xff071930),
          ThemeColor().mycolor.shade500
        ], begin: FractionalOffset.topLeft, end: FractionalOffset.bottomRight)),
        // color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/logo.png",
              height: MediaQuery.of(context).size.height * 0.6,
              width: 350,
            ),
            const SizedBox(
              height: 25,
            ),
            spinkit,
          ],
        ),
      ),
    );
  }
}
