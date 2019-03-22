import 'package:flutter/material.dart';
import 'package:spiik/src/screens/agent.dart';

void main() => runApp(Spiik());

class Spiik extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spiik',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Agent(title: 'Spiik'),
    );
  }
}
