import 'package:book_app/consttants.dart';
// import 'package:book_app/screens/details_screen.dart';
import 'package:book_app/screens/home_screen.dart';
// import 'package:book_app/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Book App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: Theme.of(context).textTheme.apply(
              displayColor: kBlackColor,
            ),
      ),
      home: HomeScreen(),
    );
  }
}

