import 'package:flutter/material.dart';
import 'package:test_project/persistance_navigation.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName='home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      centerTitle: true,
      title: Text('Test App'),
    ),
      body: Column(
        children: [
          persistanceNav(),

        ],
      ),

    );
  }
}
