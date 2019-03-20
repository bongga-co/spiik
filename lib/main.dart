import 'package:flutter/material.dart';
import 'package:spiik/src/screens/home.dart';

void main() => runApp(Spiik());

class Spiik extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spiik',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(title: 'Spiik'),
    );
  }
}
