import 'package:flutter/material.dart';
import 'package:devgram/pages/pages.dart';

/*
 * Main Function
 */
void main() {
  runApp(MyApp());
}

/*
 * Main Class 
 */
class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Devgram',
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
