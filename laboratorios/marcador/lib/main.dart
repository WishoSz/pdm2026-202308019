import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: const Color.fromARGB(255, 125, 125, 125)),
      ),
      home: const MyHomePage(title: 'MARCADOR DEPORTIVO'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counterequipo1 = 0;
  int _counterequipo2 = 0;

  bool isWinning1 = false;
  bool isWinning2 = false;

  String marcadorActual = "Empate";

  String equipo1 = "ABABA";
  String equipo2 = "CECECE";



  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column( mainAxisAlignment: MainAxisAlignment.center, children: [
          
          
          Row( mainAxisAlignment:  MainAxisAlignment.center, children: [
            Text('$equipo1',style: TextStyle( fontSize: 40,
            color: isWinning1? Colors.green : Colors.black ), ),
            const Text(' vs ', style: TextStyle( fontSize: 30)),
            Text('$equipo2',style: TextStyle( fontSize: 40,
            color: isWinning2? Colors.green : Colors.black ), ),
          ], ),

          SizedBox( width: 10, height: 20),

          Row(mainAxisAlignment: MainAxisAlignment.center,children: [
            Text('$marcadorActual',style: Theme.of(context).textTheme.headlineSmall),
          ],),


          SizedBox( width: 10, height: 20),
          
          Row(
          mainAxisAlignment: .center,
          children: [
            Text('$_counterequipo1',style: TextStyle( fontSize: 50,
            color: isWinning1? Colors.green : Colors.black ), ),
            const Text(' –– ', style: TextStyle( fontSize: 12)),
            Text('$_counterequipo2',style: TextStyle( fontSize: 50,
            color: isWinning2? Colors.green : Colors.black), ),
          ],
        ),

        SizedBox( width: 10, height: 20),

      //Botones
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            
            FloatingActionButton.small(
                  backgroundColor: Colors.redAccent,
                  onPressed: () {
                    setState(() 
                    { 
                      _counterequipo1++;
                    if (_counterequipo1 > _counterequipo2){ isWinning1 = true; isWinning2 = false; marcadorActual = "Va ganando $equipo1"; }
                    if (_counterequipo2 > _counterequipo1){ isWinning1 = false; isWinning2 = true; marcadorActual = "Va ganando $equipo2";}
                    if (_counterequipo2 == _counterequipo1){ isWinning1 = false; isWinning2 = false; marcadorActual = "Empate";}
                    });
                  },
                  child: const Icon(Icons.exposure_plus_1, color: Colors.white),
                ),

            FloatingActionButton.small(
                  backgroundColor: Colors.redAccent,
                  onPressed: () {
                    setState(() {
                    if (_counterequipo1 > 0){ _counterequipo1--;}
                
                    if (_counterequipo1 > _counterequipo2){ isWinning1 = true; isWinning2 = false; marcadorActual = "Va ganando $equipo1"; }
                    if (_counterequipo2 > _counterequipo1){ isWinning1 = false; isWinning2 = true; marcadorActual = "Va ganando $equipo2";}
                    if (_counterequipo2 == _counterequipo1){ isWinning1 = false; isWinning2 = false; marcadorActual = "Empate";}
                    });
                  },
                  child: const Icon(Icons.exposure_minus_1, color: Colors.white,),
                ),

            FloatingActionButton.small(
                  backgroundColor: Colors.amberAccent,
                  onPressed: () {
                    setState(() 
                    { 
                      _counterequipo2++;
                    if (_counterequipo1 > _counterequipo2){ isWinning1 = true; isWinning2 = false; marcadorActual = "Va ganando $equipo1"; }
                    if (_counterequipo2 > _counterequipo1){ isWinning1 = false; isWinning2 = true; marcadorActual = "Va ganando $equipo2";}
                    if (_counterequipo2 == _counterequipo1){ isWinning1 = false; isWinning2 = false; marcadorActual = "Empate";}
                    });
                  },
                  child: const Icon(Icons.exposure_plus_1),
                ),

              FloatingActionButton.small(
                  backgroundColor: Colors.amberAccent,
                  onPressed: () {
                    setState(() {
                      if (_counterequipo2 > 0){ _counterequipo2--;}
                
                    if (_counterequipo1 > _counterequipo2){ isWinning1 = true; isWinning2 = false; marcadorActual = "Va ganando $equipo1"; }
                    if (_counterequipo2 > _counterequipo1){ isWinning1 = false; isWinning2 = true; marcadorActual = "Va ganando $equipo2";}
                    if (_counterequipo2 == _counterequipo1){ isWinning1 = false; isWinning2 = false; marcadorActual = "Empate";}
                    });
                  },
                  child: const Icon(Icons.exposure_minus_1),
                ),


          ], //children del row principal
        ),


      SizedBox( width: 10, height: 20),
        //Reiniciar
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          FloatingActionButton.extended(
                  backgroundColor: const Color.fromARGB(255, 131, 214, 206),
                  
                  onPressed: () {
                    setState(() {
                       _counterequipo2 = 0; 
                       _counterequipo1 = 0;
                       isWinning1 =false;
                       isWinning2 =false;
                       marcadorActual = "Empate";
                    });
                  },
                  icon: const Icon(Icons.restart_alt),
                  label: const Text('Reiniciar'),
                ),
        ],)
        ],
        ), 
      ) 

     

    );
  }
}