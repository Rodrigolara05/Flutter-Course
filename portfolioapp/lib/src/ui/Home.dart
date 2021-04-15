import 'package:flutter/material.dart';
import 'WebView.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Portfolio APP"),),
        body: WebViewExample(),
    );
  }
}