import 'package:flutter/material.dart';
import 'package:curso1/Components/task.dart';
class InitialScreen extends StatefulWidget {

  const InitialScreen({ super.key });

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(leading: Container(), title: const Text('Tarefas')),
            body: AnimatedOpacity(
                opacity: opacidade ? 1 : 0,
                duration: const Duration(milliseconds: 5000),
                child: ListView(children: const [
                  Task(
                      'Aprender Flutter',
                      'assets/images/dash.png',
                      3),
                  Task(
                      'Andar de Bike',
                      'assets/images/bike.webp',
                      2),
                  Task(
                      'Meditar',
                      'assets/images/meditar.jpeg',
                      5),
                  Task(
                      'Ler',
                      'assets/images/livro.jpg',
                      4),
                  Task(
                      'Jogar',
                      'assets/images/jogar.jpg',
                      1),
                    SizedBox(height: 80)
                ])),
            floatingActionButton: FloatingActionButton(
                onPressed: () {
                  setState((){opacidade = !opacidade;});
                  
                },
                child: const Icon(Icons.remove_red_eye)));
  }
}