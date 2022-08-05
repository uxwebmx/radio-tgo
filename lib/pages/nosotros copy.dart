import 'package:flutter/material.dart';
import 'package:tlaltenangoenred/pages/my_drawer.dart';

class Acerca extends StatefulWidget {
  const Acerca({Key? key}) : super(key: key);

  @override
  _AcercaState createState() => _AcercaState();
}

class _AcercaState extends State<Acerca> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nosotros'),
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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const <Widget>[
            Icon(Icons.home),
            Icon(Icons.stop),
            Icon(Icons.access_time),
            Padding(
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
                _locutor3(),
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
    image: AssetImage('assets/images/tgo-nosotros.jpg'),
    fit: BoxFit.cover,
  );
}

Column _locutor3() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: const <Widget>[
      Divider(),
      Text(
        'Acerca De Tlaltenangoenred',
        style: TextStyle(
          fontSize: 22.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      Divider(),
      Text(
        'Somos un grupo de ciudadanos voluntarios sin fines de lucro que se organiza a nivel local, nacional e internacional. cuyos esfuerzos persiguen la diverciòn en la locuciòn, fines culturales, educativos, deportivos, divulgativos o similares.',
        style: TextStyle(color: Colors.black54),
      ),
      Divider(),
      Text(
        'Tlaltenangoenred Radio',
        style: TextStyle(
          fontSize: 12.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text(
        'Emisora de Radio Online, que difunde su señal desde Tlaltenango de Sánchez Román, Zacatecas. Nos pueden sintonizar en nuestra página WEB www.tlaltenangoenred.com/radio, también en TuneIn Radio, y a través de nuestra aplicación "Tlaltenangoenred". Somos un grupo de ciudadanos comprometidos y con amor de Servicio, que buscan a través de la participación y aportación de ideas, contribuir al desarrollo de este lugar, ofreciendo información local veraz  y oportuna. Así como otro tipo de contenidos que contribuyan al crecimiento del conocimiento general.',
        style: TextStyle(color: Colors.black54),
      ),
    ],
  );
}
