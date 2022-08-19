import 'package:flutter/material.dart';
import 'package:tlaltenangoenred/pages/Locutores.dart';
import 'package:tlaltenangoenred/pages/home.dart';
import 'package:tlaltenangoenred/pages/nosotros.dart';
import 'package:tlaltenangoenred/pages/podcast.dart';
import 'package:tlaltenangoenred/pages/podcast0.dart';
import 'package:tlaltenangoenred/pages/politicas.dart';
import 'package:tlaltenangoenred/pages/videos.dart';
import 'package:tlaltenangoenred/pages/web_site.dart';

/*  Drawer Canva donde se encuentra el Menu */
class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: const <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/tgo-index.jpg'),
                  fit: BoxFit.cover),
            ),
            child: null,
          ),
          MenuListTileWidget(),
        ],
      ),
    );
  }
}

/*  Lista de Menu Principal */
class MenuListTileWidget extends StatelessWidget {
  const MenuListTileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: const Icon(Icons.home),
          title: const Text('Home'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Home(),
              ),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.whatsapp),
          title: const Text('Contactar a Locutor'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Locutores(),
              ),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.video_library_rounded),
          title: const Text('Videos'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const VideosTube(),
              ),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.mic_none_rounded),
          title: const Text('Entrevistas y Transmisiones'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Podcast2(),
              ),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.podcasts),
          title: const Text('Podcast'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Podcast1(),
              ),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.chat_bubble),
          title: const Text('Chatroom'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const WebSite(),
              ),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.quiz_sharp),
          title: const Text('Acerca Tlaltenangoenred'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Acerca(),
              ),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.privacy_tip_outlined),
          title: const Text('Aviso de Privacidad'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Politica(),
              ),
            );
          },
        ),
      ],
    );
  }
}
