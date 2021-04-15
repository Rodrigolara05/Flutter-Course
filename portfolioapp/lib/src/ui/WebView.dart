import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewExample extends StatefulWidget {
  @override
  WebViewExampleState createState() => WebViewExampleState();
}

class WebViewExampleState extends State<WebViewExample> {
  num _stackToView = 1;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    
     return IndexedStack(
      index: _stackToView,
      children: [
        WebView(
          initialUrl: 'https://flutter.dev',
          onPageFinished: (String url) {
            setState(() {
              _stackToView = 0;
            });
          },
        ),
        Container(child: Center(child: CircularProgressIndicator())),
      ],
    );
  }
}