import 'package:flutter/material.dart';
import 'package:gotechassessmenttest/ui/Page1.dart';

class Page3 extends StatefulWidget {
  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page 3'),
          leading: IconButton(
          icon: Icon(Icons.arrow_back),
      onPressed: () {

        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Page1()),
        );
      },
    ),
      ),
      body: Center(
        child: Text('This is Page 3'),
      ),
    );
  }

}