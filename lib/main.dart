import 'package:flutter/material.dart';

void main() => runApp(MisIconos());

class MisIconos extends StatelessWidget {
  const MisIconos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Diego Rodriguez, Mat: 22308051281296'),
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 18),
          centerTitle: true,
          backgroundColor: Color(0xff40747a),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Centra el contenido verticalmente
            children: <Widget>[
              // Primera fila con 3 iconos
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceEvenly, // Distribuye el espacio uniformemente
                children: <Widget>[
                  IconWithSubtitle(
                      icon: Icons.star,
                      subtitle: 'Favorito',
                      color: Color(0xff00ffc9)),
                  IconWithSubtitle(
                      icon: Icons.favorite,
                      subtitle: 'Me gusta',
                      color: Color(0xffff1100)),
                  IconWithSubtitle(
                      icon: Icons.thumb_up,
                      subtitle: 'Like',
                      color: Colors.blue),
                ],
              ),
              SizedBox(height: 20.0), // Espacio entre las filas
              // Segunda fila con 3 iconos
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceEvenly, // Distribuye el espacio uniformemente
                children: <Widget>[
                  IconWithSubtitle(
                      icon: Icons.home,
                      subtitle: 'Inicio',
                      color: Color(0xffffda00)),
                  IconWithSubtitle(
                      icon: Icons.settings,
                      subtitle: 'Ajustes',
                      color: Color(0xff12779f)),
                  IconWithSubtitle(
                      icon: Icons.email,
                      subtitle: 'Correo',
                      color: Color(0xffd623e7)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Widget personalizado para un icono con subtítulo
class IconWithSubtitle extends StatelessWidget {
  final IconData icon;
  final String subtitle;
  final Color color;

  IconWithSubtitle(
      {required this.icon, required this.subtitle, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(icon, size: 50.0, color: color),
        SizedBox(height: 8.0), // Espacio entre el icono y el subtítulo
        Text(subtitle, style: TextStyle(fontSize: 16.0)),
      ],
    );
  }
}
