import 'package:flutter/material.dart';
import 'page2.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page 1')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Page2()),
            );
          },
          child: Text('Go to Page 2'),
        ),
      ),
    );
  }
}