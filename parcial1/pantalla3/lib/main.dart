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
      title: 'PANTALLA 3',
      theme: ThemeData( brightness: Brightness.light, scaffoldBackgroundColor: Colors.white ),
      home: Scaffold(
         bottomNavigationBar: NavigationBar(
          indicatorColor: Colors.lightGreen,
          destinations: const <Widget>[
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              label: 'Inicio',
            ),
            NavigationDestination(
              icon: Badge(child: Icon(Icons.map)),
              label: 'Mapa',
            ),
            NavigationDestination(
              icon: Badge(child: Icon(Icons.transform_rounded)),
              label: 'Transferir',
            ),
            NavigationDestination(
              icon: Badge(child: Icon(Icons.settings_outlined)),
              label: 'Configuracion',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.beach_access),
              icon: Badge(child: Icon(Icons.person_pin)),
              label: 'Perfil',
            ),
          ],
        ),

        
        body: SafeArea( child: ListView( padding: EdgeInsets.all(20), children: 
          [
            Row( mainAxisAlignment: MainAxisAlignment.center, children: [ Text('Perfil' ,style: TextStyle(fontSize: 36, fontWeight: FontWeight(700)))],),
            SizedBox( height: 10),

            Row( mainAxisAlignment: MainAxisAlignment.center, children: [
              Stack( alignment: AlignmentGeometry.directional(0.95,0.77),children: [
                Icon(Icons.person_pin_sharp, size: 180),
                Icon(Icons.edit, size: 40, color: Colors.lime),
              ],
              )
            ],),

            SizedBox( height: 20),

            Card( child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column( crossAxisAlignment:CrossAxisAlignment.start, children: [
                
              Row( mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                 Text('Informacion Personal' ,style: TextStyle(fontSize: 25, fontWeight: FontWeight(500))),
                 Text('Editar' ,style: TextStyle(fontSize: 20, fontWeight: FontWeight(600)))
                 ],
              ),
              
              SizedBox( height: 10),
              
              filaPerfilInfo(icon: Icons.person_3, titulo: 'Nombre', subtitulo: 'Terry Crew'),
              filaPerfilInfo(icon: Icons.email, titulo: 'Correo electronico', subtitulo: 'terryCrew@gmail.com'),
              filaPerfilInfo(icon: Icons.phone, titulo: 'Número de telefono', subtitulo: '+502 1234 5678'),
              filaPerfilInfo(icon: Icons.home_filled, titulo: 'Direccion de vivienda', subtitulo: '70 Rainey Street, Apartment 146, Austin TX 78701'),

              ] ),
              )
            ),

            SizedBox( height: 20),

            Card( child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column( crossAxisAlignment:CrossAxisAlignment.start, children: [
                Text('Informacion de la cuenta' ,style: TextStyle(fontSize: 25, fontWeight: FontWeight(500))),

              filaPerfilInfo(icon: Icons.info, titulo: 'Descripcion', 
              subtitulo: ' Reloaded 1 of 753 libraries in 992ms (compile: 8 ms, reload: 158 ms, reassemble: 77 ms). Reloaded 1 of 753 libraries in 260ms (compile: 8 ms, reload: 69 ms, reassemble: 75 ms)'),
              ] ),
              )
            ),

          ],
        )
        )
      ),
    );
  }
}



Widget filaPerfilInfo( {
  required IconData icon,
  required String titulo,
  required String subtitulo,
}
){ return ListTile(
      leading: Icon(icon, color: Colors.black, size: 40,),
      title: Text(titulo ,style: TextStyle(fontSize: 15, color: Colors.grey, fontWeight: FontWeight(400))),
      subtitle: Text(subtitulo ,style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight(400))),
  );
}
