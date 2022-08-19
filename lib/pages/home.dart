import 'dart:async';
import 'package:flutter_radio_player/flutter_radio_player.dart';
import 'package:flutter/material.dart';
import 'package:tlaltenangoenred/pages/my_drawer.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  final playerState = FlutterRadioPlayer.flutter_radio_paused;

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  final FlutterRadioPlayer _flutterRadioPlayer = FlutterRadioPlayer();

  @override
  void initState() {
    super.initState();
    initRadioService();
  }

  Future<void> initRadioService() async {
    await _flutterRadioPlayer.init(
      "Tlaltenangoenred Radio",
      "Live",
      "https://stream.zenolive.com/wmt2bd5eh1duv.mp3",
      "true",
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tlaltenangoenred'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.wallet_giftcard_sharp),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      drawer: const MyDrawer(),
      body: const WebView(
        initialUrl: 'https://www.tlaltenangoenred.com/',
        javascriptMode: JavascriptMode.unrestricted,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xffFFfffC),
          onPressed: () async {
            await _flutterRadioPlayer.playOrPause();
          },
          child: const Icon(Icons.play_arrow)),
      bottomNavigationBar: BottomAppBar(
        //hasnotch: true,
        color: const Color(0xffFFfffF),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              onPressed: () async {
                final Uri urL =
                    Uri.parse('https://www.facebook.com/tlaltenangoenred');
                await launchUrl(
                  urL,
                  mode: LaunchMode.externalNonBrowserApplication,
                );
              },
              icon: const Icon(
                Icons.facebook,
                color: Colors.blue,
              ),
            ),
            IconButton(
              onPressed: () async {
                final Uri urL =
                    Uri.parse('https://www.youtube.com/c/tlaltenangoenred');
                await launchUrl(
                  urL,
                  mode: LaunchMode.inAppWebView,
                );
              },
              icon: const Icon(
                Icons.video_library_sharp,
                color: Colors.red,
              ),
            ),
            IconButton(
              onPressed: () async {
                final Uri urL = Uri.parse('https://m.me/tlaltenangoenred');
                await launchUrl(
                  urL,
                  mode: LaunchMode.externalApplication,
                );
              },
              icon: const Icon(
                Icons.mail_lock_outlined,
                color: Colors.orange,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(32.0),
            ),
          ],
        ),
      ),
    );
  }
}
