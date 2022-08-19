import 'package:flutter/material.dart';
import 'package:tlaltenangoenred/pages/my_drawer.dart';
import 'package:url_launcher/url_launcher.dart';

class Locutores extends StatefulWidget {
  const Locutores({super.key});

  @override
  LocutoresState createState() => LocutoresState();
}

class LocutoresState extends State<Locutores> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Locutores'),
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
      body: _buildBody1(),
      bottomNavigationBar: BottomAppBar(
        //hasnotch: true,
        color: const Color(0xffFFfffF),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              onPressed: () async {
                final Uri urL = Uri.parse('fb://page/tlaltenangoenred');
                await launchUrl(
                  urL,
                  mode: LaunchMode.externalApplication,
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

Widget _buildBody1() {
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _locutor1(),
                rowLocutor1(),
                const Divider(),
                _locutor2(),
                rowLocutor2(),
                const Divider(),
                _locutor3(),
                rowLocutor3(),
                const Divider(),
                _locutor4(),
                rowLocutor4(),
                const Divider(),
                _locutor5(),
                rowLocutor5(),
                const Divider(),
                _locutor6(),
                rowLocutor6(),
                const Divider(),
                _locutor7(),
                rowLocutor7(),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Image _locutor1() {
  return const Image(
    image: AssetImage('assets/images/lahoradelcafe.jpeg'),
    fit: BoxFit.cover,
  );
}

Column _locutor2() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: const <Widget>[
      Image(
        image: AssetImage('assets/images/zacatecanosdecorazon.jpeg'),
      ),
    ],
  );
}

Column _locutor3() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: const <Widget>[
      Divider(),
      Image(
        image: AssetImage('assets/images/detodounpoco.jpeg'),
      ),
    ],
  );
}

Column _locutor4() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: const <Widget>[
      Divider(),
      Image(
        image: AssetImage('assets/images/ombligodelasemana.jpeg'),
      ),
    ],
  );
}

Column _locutor5() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: const <Widget>[
      Divider(),
      Image(
        image: AssetImage('assets/images/lasmasruquitas.jpeg'),
      ),
    ],
  );
}

Column _locutor6() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: const <Widget>[
      Divider(),
      Image(
        image: AssetImage('assets/images/reencuentromusical.jpeg'),
      ),
    ],
  );
}

Column _locutor7() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: const <Widget>[
      Divider(),
      Image(
        image: AssetImage('assets/images/ponletu.jpeg'),
      ),
    ],
  );
}

rowLocutor1() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      IconButton(
        onPressed: () async {
          final Uri urL = Uri.parse('https://m.me/ernesto.servando.7');
          await launchUrl(
            urL,
            mode: LaunchMode.externalApplication,
          );
        },
        icon: const Icon(
          Icons.facebook,
          color: Colors.blue,
          size: 40,
        ),
      ),
      IconButton(
        onPressed: () async {
          final Uri urL = Uri.parse('https://wa.me/521');
          await launchUrl(
            urL,
            mode: LaunchMode.externalApplication,
          );
        },
        icon: const Icon(
          Icons.whatsapp,
          color: Colors.green,
          size: 40,
        ),
      ),
    ],
  );
}

rowLocutor2() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      IconButton(
        onPressed: () async {
          final Uri urL = Uri.parse('https://m.me/teresa.c.rodriguez.75');
          await launchUrl(
            urL,
            mode: LaunchMode.externalApplication,
          );
        },
        icon: const Icon(
          Icons.facebook,
          color: Colors.blue,
          size: 40,
        ),
      ),
      IconButton(
        onPressed: () async {
          final Uri urL = Uri.parse('https://wa.me/17738226857');
          await launchUrl(
            urL,
            mode: LaunchMode.externalApplication,
          );
        },
        icon: const Icon(
          Icons.whatsapp,
          color: Colors.green,
          size: 40,
        ),
      ),
    ],
  );
}

rowLocutor3() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      IconButton(
        onPressed: () async {
          final Uri urL = Uri.parse('https://m.me/sal9818');
          await launchUrl(
            urL,
            mode: LaunchMode.externalApplication,
          );
        },
        icon: const Icon(
          Icons.facebook,
          color: Colors.blue,
          size: 40,
        ),
      ),
      IconButton(
        onPressed: () async {
          final Uri urL = Uri.parse('https://wa.me/16692946445');
          await launchUrl(
            urL,
            mode: LaunchMode.externalApplication,
          );
        },
        icon: const Icon(
          Icons.whatsapp,
          color: Colors.green,
          size: 40,
        ),
      ),
    ],
  );
}

rowLocutor4() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      IconButton(
        onPressed: () async {
          final Uri urL = Uri.parse('https://m.me/salvador.castanedamtz');
          await launchUrl(
            urL,
            mode: LaunchMode.externalApplication,
          );
        },
        icon: const Icon(
          Icons.facebook,
          color: Colors.blue,
          size: 40,
        ),
      ),
      IconButton(
        onPressed: () async {
          final Uri urL = Uri.parse('https://wa.me/5214374790112');
          await launchUrl(
            urL,
            mode: LaunchMode.externalApplication,
          );
        },
        icon: const Icon(
          Icons.whatsapp,
          color: Colors.green,
          size: 40,
        ),
      ),
    ],
  );
}

rowLocutor5() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      IconButton(
        onPressed: () async {
          final Uri urL = Uri.parse('https://m.me/octavioroman');
          await launchUrl(
            urL,
            mode: LaunchMode.externalApplication,
          );
        },
        icon: const Icon(
          Icons.facebook,
          color: Colors.blue,
          size: 40,
        ),
      ),
      IconButton(
        onPressed: () async {
          final Uri urL = Uri.parse('https://wa.me/521');
          await launchUrl(
            urL,
            mode: LaunchMode.externalApplication,
          );
        },
        icon: const Icon(
          Icons.whatsapp,
          color: Colors.green,
          size: 40,
        ),
      ),
    ],
  );
}

rowLocutor6() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      IconButton(
        onPressed: () async {
          final Uri urL = Uri.parse('https://m.me/luisadolfo.lopeztorres');
          await launchUrl(
            urL,
            mode: LaunchMode.externalApplication,
          );
        },
        icon: const Icon(
          Icons.facebook,
          color: Colors.blue,
          size: 40,
        ),
      ),
      IconButton(
        onPressed: () async {
          final Uri urL = Uri.parse('https://wa.me/5214371090696');
          await launchUrl(
            urL,
            mode: LaunchMode.externalApplication,
          );
        },
        icon: const Icon(
          Icons.whatsapp,
          color: Colors.green,
          size: 40,
        ),
      ),
    ],
  );
}

rowLocutor7() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      IconButton(
        onPressed: () async {
          final Uri urL = Uri.parse('https://m.me/maria.lomagarcia.7');
          await launchUrl(
            urL,
            mode: LaunchMode.externalApplication,
          );
        },
        icon: const Icon(
          Icons.facebook,
          color: Colors.blue,
          size: 40,
        ),
      ),
      IconButton(
        onPressed: () async {
          final Uri urL = Uri.parse('https://m.me/frank.loma.37');
          await launchUrl(
            urL,
            mode: LaunchMode.externalApplication,
          );
        },
        icon: const Icon(
          Icons.facebook,
          color: Colors.blue,
          size: 40,
        ),
      ),
    ],
  );
}
