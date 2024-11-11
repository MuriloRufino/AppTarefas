import 'package:flutter/material.dart';

class MyFirstWidget extends StatefulWidget{
  const MyFirstWidget({super.key});

  @override
  State<MyFirstWidget> createState() => _MyFirstWidgetState();
}

class _MyFirstWidgetState extends State<MyFirstWidget> {
  String text = 'Aperte o botão';
  @override
  Widget build(BuildContext context){
    return Container(
        color: Colors.white,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(alignment: AlignmentDirectional.center, children: [
                Container(color: Colors.red, width: 100, height: 100),
                Container(color: Colors.blue, width: 50, height: 50)
              ]),
              Stack(alignment: AlignmentDirectional.center, children: [
                Container(color: Colors.blue, width: 100, height: 100),
                Container(color: Colors.red, width: 50, height: 50)
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(color: Colors.cyan, height: 50, width: 50),
                  Container(
                      color: Colors.pinkAccent, height: 50, width: 50),
                  Container(color: Colors.purple, height: 50, width: 50)
                ],
              ),
              Container(
                color: Colors.amber,
                height: 30,
                width: 300,
                child: const Text('Sakura Ogami',
                    style: TextStyle(color: Colors.black, fontSize: 28),
                    textAlign: TextAlign.center),
              ),
              ElevatedButton(

                onPressed: () {

                  setState((){
                      text = 'Apertou';
                  });

                },
                child: Text(text),
              )
            ]));
  }
}