import 'package:flutter/material.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';
import 'page3.dart';
class Page2 extends StatefulWidget {
  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  void initState() {
    super.initState();
    disableScreenshotsAndRecording();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Page 2  disable screenshot and screen recording')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            enableScreenshotsAndRecording();
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Page3()),
            );
          },
          child: Text('Go to Page 3'),
        ),
      ),
    );
  }

  Future<void> disableScreenshotsAndRecording() async {
    await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
  }

  Future<void> enableScreenshotsAndRecording() async {
    await FlutterWindowManager.clearFlags(FlutterWindowManager.FLAG_SECURE);
  }
}
