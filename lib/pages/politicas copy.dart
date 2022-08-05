import 'package:flutter/material.dart';
import 'package:tlaltenangoenred/pages/my_drawer.dart';

class Politica extends StatefulWidget {
  const Politica({Key? key}) : super(key: key);

  @override
  _PoliticaState createState() => _PoliticaState();
}

class _PoliticaState extends State<Politica> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Políticas'),
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
    image: AssetImage('assets/images/tgo-icon.jpg'),
    fit: BoxFit.cover,
  );
}

Column _locutor3() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: const <Widget>[
      Divider(),
      Text(
        'Política de Privacidad',
        style: TextStyle(
          fontSize: 22.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      Divider(),
      Text(
        'Las aplicaciones pueden contener enlaces a páginas web, productos y servicios de terceros. También pueden utilizar u ofrecer productos o servicios de terceros. La recogida de datos por parte de terceros, introduciendo de datos sobre ubicaciones geográficas o datos de contacto, se guiará por sus respectivas políticas de privacidad. Le recomendamos consultar las políticas de privacidad de esos terceros.',
        style: TextStyle(color: Colors.black54),
      ),
      Divider(),
      Text(
        'USO DE COOKIES, WEB BEACONS Y/U OTRAS TECNOLOGÍAS SIMILARES',
        style: TextStyle(
          fontSize: 12.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text(
        'Los sitios oficiales, así como las diferentes APP de Imagen utilizan cookies, web beacons y/u otras tecnologías similares, estás tecnologías tienen como finalidades: mejorar la experiencia de navegación del usuario en los sitios y/o APP almacenando sus preferencias en el dispositivo de acceso, mostrar contenido personalizado y publicidad de acuerdo a sus preferencias en sus posteriores visitas, así como facilitar a Imagen el análisis de dicha información con el objetivo de mejorar nuestros sitios y APP. La información que se recaba es anónima y puede ser compartida con terceros. Estos datos no incluyen ningún tipo de información que identifique o haga identificable al usuario.',
        style: TextStyle(color: Colors.black54),
      ),
      Text(
        'Las cookies y web beacons que utilizamos son: Cookies necesarias: Son indispensables para proporcionar una funcionalidad base. El sitio web no funcionará correctamente sin estas cookies y estas están habilitadas por defecto.Cookies analíticas: Nos ayudan a mejorar nuestro sitio web mediante la recopilación y el reporte de información sobre su uso. Cookies de marketing: Se usan para realizar un seguimiento de los visitantes de los sitios web para permitir que los anunciantes muestren publicidad relevante. Web beacons: se utilizan para recabar información del usuario, como: dirección IP de origen, navegador utilizado, sistema operativo, momento en que se accedió al sitio, y en el caso del correo electrónico, la asociación de los datos obtenidos con el destinatario.',
        style: TextStyle(color: Colors.black54),
      ),
    ],
  );
}
