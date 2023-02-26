import 'package:flutter/material.dart';
import 'package:test_project/home_screen.dart';

void main(){
  runApp(TestApp());

}
class TestApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {HomeScreen.routeName:(context)=>HomeScreen()},
      initialRoute: HomeScreen.routeName,

    );
  }
}
