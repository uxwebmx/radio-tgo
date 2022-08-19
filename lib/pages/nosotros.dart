import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Acerca extends StatelessWidget {
  const Acerca({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Acerca de'),
      ),
      body: const WebView(
        initialUrl: 'https://www.tlaltenangoenred.com/acerca-de/',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
