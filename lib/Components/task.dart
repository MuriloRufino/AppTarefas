import 'package:flutter/material.dart';
import 'package:curso1/Components/difficulty.dart';

class Task extends StatefulWidget {
  final String nome;
  final String foto;
  final int dificuldade;
  const Task(this.nome, this.foto, this.dificuldade, {super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0, maestria = 0;
  Color mColor = Colors.blue;
  String text = 'Lvl Up';
  bool isButtonDisabled = false; 
  IconData icon = Icons.arrow_drop_up;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(children: [
          Container(
              height: 140,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4), color: mColor)),
          Column(children: [
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.white),
                height: 100,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.black26),
                          width: 72,
                          height: 100,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(4),
                              child:
                                  Image.asset(widget.foto, fit: BoxFit.cover))),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                                width: 200,
                                child: Text(widget.nome,
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 24,
                                        overflow: TextOverflow.ellipsis))),
                            Difficulty(difficultyLevel: widget.dificuldade)
                          ]),
                      SizedBox(
                          height: 52,
                          width: 52,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding:
                                    EdgeInsets.zero, // Remove o padding padrão
                              ),
                              onPressed: isButtonDisabled ? null : () {
                                setState(() {
                                  nivel++;
                                  if((nivel / widget.dificuldade) == 10){
                                    maestria++;
                                    nivel = 0;
                                    switch(maestria){
                                      case 1: mColor = Colors.black;
                                      break;
                                      case 2: mColor = Colors.green;
                                      break;
                                      case 3: mColor = Colors.red;
                                      break;
                                      case 4: mColor = Colors.grey;
                                      break;
                                      case 5: mColor = Colors.purple;
                                      break;
                                      case 6: text = 'MAX'; isButtonDisabled = true; icon = Icons.close;
                                      break;
                                    }
                                  }
                                });
                              },
                              child: Center(
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                    Icon(icon),
                                    Text(text,
                                        style: const TextStyle(fontSize: 12))
                                  ]))))
                    ])),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: SizedBox(
                    width: 200,
                    child: LinearProgressIndicator(
                        color: Colors.white,
                        value: (widget.dificuldade > 0
                            ? (nivel / widget.dificuldade) / 10
                            : 1)),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text('Nível: $nivel',
                        style:
                            const TextStyle(color: Colors.white, fontSize: 16),
                        textAlign: TextAlign.start))
              ],
            )
          ])
        ]));
        
        
  }
}
