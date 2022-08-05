import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Locutores extends StatelessWidget {
  const Locutores({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tlaltenangoenred.com'),
      ),
      body: const WebView(
        initialUrl: 'https://radio.tlaltenangoenred.com/locutores/',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}



