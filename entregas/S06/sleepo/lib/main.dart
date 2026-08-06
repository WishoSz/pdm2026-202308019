import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//Paleta de colores


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Es para quitar el cosito que dice debug
      title: 'Sleepo ZZZ',
      theme: ThemeData( brightness: Brightness.dark, scaffoldBackgroundColor: Colors.blueGrey ),
      home: Scaffold(
         bottomNavigationBar: NavigationBar(
          indicatorColor: Colors.blueGrey,
          destinations: const <Widget>[
            NavigationDestination(
              selectedIcon: Icon(Icons.watch_later_outlined),
              icon: Icon(Icons.watch_later_outlined),
              label: 'Limitar Uso',
            ),
            NavigationDestination(
              icon: Badge(child: Icon(Icons.home_outlined)),
              label: 'Inicio',
            ),
            NavigationDestination(
              icon: Badge(child: Icon(Icons.add_link_rounded)),
              label: 'Agregar',
            ),
          ],
        ),

        
        body: SafeArea( child: ListView( padding: EdgeInsets.all(10), children: 
          [
            SizedBox( height: 10),
            Column( crossAxisAlignment: CrossAxisAlignment.start , children: 
            [
              Text('Bienvenido <nombre>.', style: TextStyle(fontSize: 25, color: Colors.white)),
              SizedBox( height: 3),

            ]
          ),

          ],
        )
        )
      ),
    );
  }
}



Widget filaMovimiento( {
  required IconData icon,
  required String title,
  required String subtitle,
  required String amount,
  required String date,
  bool isRequired = false,
}
){ return ListTile(
  leading: Icon(icon, color: Colors.lime,),
  title: Text(title),
  subtitle: Text(subtitle),
  trailing: Column( mainAxisAlignment: MainAxisAlignment.center ,crossAxisAlignment: CrossAxisAlignment.end,
    children: [ Text( style: TextStyle(fontSize: 12, color: isRequired ? Colors.limeAccent : Colors.white), amount), Text(date)],
  ),

);
}

Widget tarjetaInfo(
 String title,
 String subtitle
){return Card(
  child: Padding(
    padding: EdgeInsets.all(16.0),
    child: Column( crossAxisAlignment:CrossAxisAlignment.start, children: [
      Text(title), 
      Text(subtitle, style: TextStyle(fontSize: 20, fontWeight: FontWeight(1000))),
      ],),)
      );
}