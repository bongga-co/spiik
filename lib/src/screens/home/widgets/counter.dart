import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  final int value;

  Counter(this.value);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 80.0,
          decoration: BoxDecoration(
              color: Colors.black45
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'You have pushed the button this many times:',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'SourceSansPro',
                  ),
                ),
                Text(
                  '$value',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'SourceSansPro'
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}