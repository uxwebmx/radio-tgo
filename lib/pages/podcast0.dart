import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Podcast2 extends StatelessWidget {
  const Podcast2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Entrevistas'),
      ),
      body: const WebView(
        initialUrl:
            "https://www.tlaltenangoenred.com/transmisiones/",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
