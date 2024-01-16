import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int marcadorL = 0;
  int marcadorV = 0;

  void marcador1() {
    setState(() {
      marcadorL++;
    });
  }

  void marcadorV1() {
    setState(() {
      marcadorV++;
    });
  }

  void marcador2() {
    setState(() {
      marcadorL = marcadorL + 2;
    });
  }

  void marcadorV2() {
    setState(() {
      marcadorV = marcadorV + 2;
    });
  }

  void marcadorV3() {
    setState(() {
      marcadorV = marcadorV + 3;
    });
  }

  void marcador3() {
    setState(() {
      marcadorL = marcadorL + 3;
    });
  }

  void resetearMarcadores() {
    setState(() {
      marcadorL = 0;
      marcadorV = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
        title: Text("Puntuador de baloncesto"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 200.0,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 4.0,
                            color: const Color.fromARGB(255, 219, 130, 130)),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: NetworkImage(
                                "https://images.ecestaticos.com/1q-cjp_bLT9vd3EX0RmI8khiPZQ=/116x0:1173x593/1200x900/filters:fill(white):format(jpg)/f.elconfidencial.com%2Foriginal%2F117%2F8f0%2F7e8%2F1178f07e83246d7af64bc4b93f805db7.jpg"),
                            width: 150,
                            height: 80,
                          ),
                          FloatingActionButton(
                            onPressed: marcadorV1,
                            backgroundColor:
                                marcadorL > marcadorV || marcadorL == marcadorV
                                    ? Color.fromARGB(255, 152, 236, 155)
                                    : Color.fromARGB(255, 221, 1, 1),
                            tooltip: 'Incremento',
                            child: Text("$marcadorL"),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: marcador1,
                                  tooltip: 'Incremento',
                                  child: Text("+1"),
                                ),
                                FloatingActionButton(
                                  onPressed: marcador2,
                                  tooltip: 'Incremento',
                                  child: Text("+2"),
                                ),
                                FloatingActionButton(
                                  onPressed: marcador3,
                                  tooltip: 'Incremento',
                                  child: Text("+3"),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 200.0,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 4.0,
                            color: const Color.fromARGB(255, 216, 142, 142)),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Image(
                            image: NetworkImage(
                                "https://images.ecestaticos.com/1q-cjp_bLT9vd3EX0RmI8khiPZQ=/116x0:1173x593/1200x900/filters:fill(white):format(jpg)/f.elconfidencial.com%2Foriginal%2F117%2F8f0%2F7e8%2F1178f07e83246d7af64bc4b93f805db7.jpg"),
                            width: 150,
                            height: 80,
                          ),
                          FloatingActionButton(
                            onPressed: marcadorV1,
                            backgroundColor:
                                marcadorV > marcadorL || marcadorL == marcadorV
                                    ? Color.fromARGB(255, 152, 236, 155)
                                    : Color.fromARGB(255, 221, 1, 1),
                            tooltip: 'Incremento',
                            child: Text("$marcadorV"),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: marcadorV1,
                                  splashColor: Colors.blue,
                                  tooltip: 'Incremento',
                                  child: Text("+1"),
                                ),
                                FloatingActionButton(
                                  onPressed: marcadorV2,
                                  splashColor: Colors.blue,
                                  tooltip: 'Incremento',
                                  child: Text("+2"),
                                ),
                                FloatingActionButton(
                                  onPressed: marcadorV3,
                                  splashColor: Colors.blue,
                                  tooltip: 'Incremento',
                                  child: Text("+3"),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: resetearMarcadores,
              child: Text("Resetear"),
            ),
          ],
        ),
      ),
    );
  }
}
