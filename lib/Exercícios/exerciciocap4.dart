//Esse widget é uma melhora do último, colocando uma imagem no container e evitando o problema de dimensões negativas
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
    return Padding(
        padding: const EdgeInsets.all(8),
        child: (Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: NetworkImage(
                                    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fmfg.fhstp.ac.at%2Fcms%2Fwp-content%2Fuploads%2F2022%2F05%2Fflutter-dash.png&f=1&nofb=1&ipt=70abeb7cda2b1012354517b1b967ba2c29664cb00bc2b213f5b0b1fa235405cd&ipo=images'), fit: BoxFit.cover),
                            color: widget.color),
                        height: height,
                        width: width),
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
                            if (height >= 10) {
                              setState(() {
                                height -= 10;
                                width -= 10;
                              });
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                      "Não é possível diminuir as dimensões além de 0"),
                                  duration: Duration(
                                      seconds:
                                          2), // Duração da mensagem na tela
                                ),
                              );
                            }
                          },
                          child: const Icon(Icons.arrow_drop_down))
                    ]),
                  ]),
            ])));
  }
}
*/