import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Politica extends StatelessWidget {
  const Politica({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Politicas de Privacidad'),
      ),
      body: const WebView(
        initialUrl: 'https://www.tlaltenangoenred.com/politica-privacidad/',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
