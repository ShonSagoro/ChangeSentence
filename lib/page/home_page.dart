import 'dart:math';

import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});


  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  var frases=['Si puedes imaginarlo, puedes programarlo.', 'Cristo tuvo el primer Respawn de la historia.', 'Todo junto se escribe separado.', 'Separado se escribe todo junto.', 'Hola mundo.', 'Eres lo que haces.'];

  final _idRandom=Random();
  int id=0;

  void _changeId(){
    setState(() {
      id=_idRandom.nextInt(6);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 32, 17, 25),
      body: Center(
        child: Column(
          children:[
            Card(
              margin: const EdgeInsets.only(top: 300, left: 20, right: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)
              ),
              color: Color.fromARGB(255, 211, 101, 132),
              child: ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.all(20),
                children: [
                  Container(
                    height: 50,
                    margin: const EdgeInsets.only(top:10, bottom: 25),
                    child: const Center(
                      child: Text("Frase del dia: ",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                    ),  
                  ),
                  Container(
                    height: 100,
                    margin: const EdgeInsets.only(top:10, bottom: 25),
                    child:  Center(
                      child: Text(frases[id],
                       style: TextStyle(
                          fontSize: 25,
                        )
                        ),
                    ),  
                  ),
                  
                  FloatingActionButton(
                    onPressed: _changeId, 
                    backgroundColor: Color.fromARGB(255, 255, 7, 114),
                    child: Icon(Icons.add_circle)),
                ],
              ),

            )
          ],
        ),
      ),
    );
  }
}