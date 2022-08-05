import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Podcast1 extends StatelessWidget {
  const Podcast1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Entrevistas'),
      ),
      body: const WebView(
        initialUrl:
            "https://podcasts.google.com/feed/aHR0cHM6Ly93d3cudGxhbHRlbmFuZ29lbnJlZC5jb20vZmVlZC9wb2RjYXN0L3RsYWx0ZW5hbmdvZW5yZWQ?sa=X&ved=0CAMQ9sEGahcKEwiwpN-7mpj5AhUAAAAAHQAAAAAQAQ&hl=es-419",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
