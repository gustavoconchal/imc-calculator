import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool pronto = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora de IMC"),
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: [IconButton(icon: Icon(Icons.refresh), onPressed: () {})],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Icon(
              Icons.person_outline,
              size: 130.0,
              color: Colors.green,
            ),
            TextField(
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              decoration: InputDecoration(
                  labelText: "Peso (Kg)",
                  labelStyle: TextStyle(color: Colors.green)),
            ),
            TextField(
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              decoration: InputDecoration(
                  labelText: "Altura (Cm)",
                  labelStyle: TextStyle(color: Colors.green)),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Container(
                height: 50.0,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          buttonColor(pronto))),
                  child: Text("Calcular",
                      style: TextStyle(color: Colors.white, fontSize: 25.0)),
                ),
              ),
            ),
            Text(
              "Info",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.green, fontSize: 25.0),
            )
          ],
        ),
      ),
    );
  }
}

Color buttonColor(bool ok) {
  return ok ? Colors.green : Colors.grey;
}
