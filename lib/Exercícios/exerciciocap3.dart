//Esse widget retorna um container com dois botões do lado para aumentar/diminuir ambas as dimensões
/*class App extends StatefulWidget {
  final Color color;
  const App(this.color, {super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  double height = 0,
      height1 = 0,
      height2 = 0,
      width = 0,
      width1 = 0,
      width2 = 0;

  @override
  Widget build(BuildContext context) {
    return Padding( padding: const EdgeInsets.all(8),
        child: (Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(color: widget.color, height: height, width: width),
                    Column(children: [
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              height += 10;
                              width += 10;
                            });
                          },
                          child: const Icon(Icons.arrow_drop_up)),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              height -= 10;
                              width -= 10;
                            });
                          },
                          child: const Icon(Icons.arrow_drop_down))
                    ]),
                  ]),
            ])));
  }
}*/