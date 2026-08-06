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
      theme: ThemeData( brightness: Brightness.dark, scaffoldBackgroundColor: Colors.black87 ),
      home: Scaffold(
         bottomNavigationBar: NavigationBar(
          indicatorColor: Colors.lime,
          destinations: const <Widget>[
            NavigationDestination(
              selectedIcon: Icon(Icons.home),
              icon: Icon(Icons.home_outlined),
              label: 'Inicio',
            ),
            NavigationDestination(
              icon: Badge(child: Icon(Icons.bar_chart)),
              label: 'Presupuesto',
            ),
            NavigationDestination(
              icon: Badge(child: Icon(Icons.add_circle_outline_outlined)),
              label: 'Agregar',
            ),
            NavigationDestination(
              icon: Badge(child: Icon(Icons.show_chart_sharp)),
              label: 'Historial',
            ),
            NavigationDestination(
              icon: Badge(child: Icon(Icons.beach_access)),
              label: 'Configuracion',
            ),
          ],
        ),

        
        body: SafeArea( child: ListView( padding: EdgeInsets.all(10), children: 
          [
            Row( mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [ Text('Luis Suarez'), Text('30 de Julio, 2026')],),
            SizedBox( height: 10),
            Column( crossAxisAlignment: CrossAxisAlignment.start , children: 
            [
              Text('TE QUEDAN DISPONIBLES...', style: TextStyle(fontSize: 20, color: Colors.lime)),
              SizedBox( height: 3),

              Text('Q2,795.50', style: TextStyle(fontSize: 50, fontWeight: FontWeight(700))),
              SizedBox( height: 10),

              LinearProgressIndicator( value: 0.33, minHeight: 10, color: Colors.lime,),
              SizedBox( height: 7),

              Text('Cuentas con x pisto baboso', style: TextStyle(fontSize: 16)),
              SizedBox( height: 10),

              Row( mainAxisAlignment:MainAxisAlignment.center ,children: [
                Expanded(child:
                  tarjetaInfo('Cuentas', 'Q7,810.00')
                ),

                SizedBox( width: 15),

                Expanded(child:
                  tarjetaInfo('Metas de ahorro', '3 actividades')
                ),
              ],)
            ],),
          SizedBox( height: 10),

          Column( children: [
            Row( mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text('Ultimos movimientos', style: TextStyle(fontSize: 25, fontWeight: FontWeight(600))),
              Text('Ver todo', style: TextStyle(fontSize: 10, color: Colors.lime)),
            ],),

          filaMovimiento(icon: Icons.directions_bus_filled,title:  'Uber al Trabajo', subtitle: 'Transporte - Tarjeta', amount:  '-Q48.00', date: 'Hoy'),
          filaMovimiento(icon: Icons.directions_bus_filled,title:  'Uber al Trabajo', subtitle: 'Transporte - Tarjeta', amount:  '-Q48.00', date: 'Hoy'),
          filaMovimiento(icon: Icons.directions_bus_filled,title:  'Uber al Trabajo', subtitle: 'Transporte - Tarjeta', amount:  '-Q48.00', date: 'Hoy', isRequired: true),
          filaMovimiento(icon: Icons.directions_bus_filled,title:  'Uber al Trabajo', subtitle: 'Transporte - Tarjeta', amount:  '-Q48.00', date: 'Hoy'),
          ],),

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