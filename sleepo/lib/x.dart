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
      theme: ThemeData( colorScheme: .fromSeed(seedColor: Colors.redAccent), ),
      home: Scaffold(
         bottomNavigationBar: NavigationBar(
          indicatorColor: Colors.red,
          destinations: const <Widget>[
            NavigationDestination(
              selectedIcon: Icon(Icons.home),
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Badge(child: Icon(Icons.notifications_sharp)),
              label: 'Notifications',
            ),
            NavigationDestination(
              icon: Badge(label: Text('2'), child: Icon(Icons.messenger_sharp)),
              label: 'Messages',
            ),
          ],
        ),

        
        body: SafeArea( child: ListView( padding: EdgeInsets.all(10), children: 
          [
            Row( mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [ Text('Luis Suarez'), Text('30 de Julio, 2026')],),
            SizedBox( height: 10),
            Column( crossAxisAlignment: CrossAxisAlignment.start , children: 
            [
              Text('TE QUEDAN DISPONIBLES...', style: TextStyle(fontSize: 20)),
              SizedBox( height: 3),

              Text('Q2,795.50', style: TextStyle(fontSize: 40)),
              SizedBox( height: 10),

              LinearProgressIndicator( value: 0.33),
              SizedBox( height: 7),

              Text('Cuentas con x pisto baboso', style: TextStyle(fontSize: 16)),
              SizedBox( height: 10),

              Row( mainAxisAlignment:MainAxisAlignment.center ,children: [
                Expanded(child:
                  Card( child: Column( crossAxisAlignment:CrossAxisAlignment.start, children: [
                    Text('Cuentas'), 
                    Text('Q7,810.00', style: TextStyle(fontSize: 20)),
                ],),)
                ),
                SizedBox( width: 15),
                Expanded(child:
                  Container( 
                  color: Colors.redAccent,
                  padding: EdgeInsets.all(15),
                    child: 
                    Column(crossAxisAlignment:CrossAxisAlignment.start, children: [
                      Text('Metas de ahorro'), 
                      Text('300', style: TextStyle(fontSize: 20)),
                ],),)
                ),
              ],)
            ],),
          SizedBox( height: 10),

          Column( children: [
            Row( mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text('Ultimos movimientos', style: TextStyle(fontSize: 25)),
              Text('Ver todo', style: TextStyle(fontSize: 10)),
            ],),

          filaMovimiento(Icons.directions_bus_filled, 'Uber al Trabajo', 'Transporte - Tarjeta', '-Q48.00', 'Hoy'),
          filaMovimiento(Icons.directions_bus_filled, 'Uber al Trabajo', 'Transporte - Tarjeta', '-Q48.00', 'Hoy'),
          filaMovimiento(Icons.directions_bus_filled, 'Uber al Trabajo', 'Transporte - Tarjeta', '-Q48.00', 'Hoy'),
          filaMovimiento(Icons.directions_bus_filled, 'Uber al Trabajo', 'Transporte - Tarjeta', '-Q48.00', 'Hoy'),
          ],),

          ],
        )
        )
      ),
    );
  }
}



Widget filaMovimiento(
  IconData icon,
  String title,
  String subtitle,
  String amount,
  String date,
){ return ListTile(
  leading: Icon(icon),
  title: Text(title),
  subtitle: Text(subtitle),
  trailing: Column( mainAxisAlignment: MainAxisAlignment.center ,crossAxisAlignment: CrossAxisAlignment.end,
    children: [ Text( style: TextStyle(fontSize: 12), amount), Text(date)],
  ),

);
}

Widget tarjetaInfo(
 String title,
 String subtitle
){return Card(
   child: Column( crossAxisAlignment:CrossAxisAlignment.start, children: [
    Text(title), 
    Text(subtitle, style: TextStyle(fontSize: 20)),
    ],),);
}