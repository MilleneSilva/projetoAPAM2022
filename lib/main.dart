import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
  <h5>oi<h5>
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      theme: new ThemeData(
        primarySwatch: Colors.purple,
        primaryColor: const Color(0xFFeae191),
        accentColor: const Color(0xFF9c27b0),
        canvasColor: const Color(0xFFbf63d2),
        <h4>olá<h4>
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController pNumero = TextEditingController();
  TextEditingController sNumero = TextEditingController();
  TextEditingController tNumero = TextEditingController();
  String ordenacao = "";
  String teste = "";
   String teste1 = "";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: 'Programa Ordenação de Números',
      ),
      body: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Icon(Icons.local_florist,
                color: const Color(0xFFecff16), size: 48.0),
            new Text(
              "Primeiro Número:",
              style: new TextStyle(
                  fontSize: 20.0,
                  color: const Color(0xFFffffe6),
                  fontWeight: FontWeight.w900,
                  fontFamily: "Roboto"),
            ),
            new TextField(
              controller: pNumero,
              style: new TextStyle(
                  fontSize: 12.0,
                  color: const Color(0xFF000000),
                  fontWeight: FontWeight.w200,
                  fontFamily: "Roboto"),
            ),
            new Text(
              "Segundo Número:",
              style: new TextStyle(
                  fontSize: 20.0,
                  color: const Color(0xFFffffff),
                  fontWeight: FontWeight.w900,
                  fontFamily: "Roboto"),
            ),
            new TextField(
              controller: sNumero,
              style: new TextStyle(
                  fontSize: 12.0,
                  color: const Color(0xFF000000),
                  fontWeight: FontWeight.w200,
                  fontFamily: "Roboto"),
            ),
            new Text(
              "Terceiro Número:",
              style: new TextStyle(
                  fontSize: 20.0,
                  color: const Color(0xFFf9f9f7),
                  fontWeight: FontWeight.w900,
                  fontFamily: "Roboto"),
            ),
            new TextField(
              controller: tNumero,
              style: new TextStyle(
                  fontSize: 12.0,
                  color: const Color(0xFF000000),
                  fontWeight: FontWeight.w200,
                  fontFamily: "Roboto"),
            ),
            new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    "Ordenação:",
                    style: new TextStyle(
                        fontSize: 20.0,
                        color: const Color(0xFFfffbfb),
                        fontWeight: FontWeight.w900,
                        fontFamily: "Roboto"),
                  ),
                  new Text(
                    ordenacao,
                    style: new TextStyle(
                        fontSize: 20.0,
                        color: const Color(0xFFfdfd0f),
                        fontWeight: FontWeight.w800,
                        fontFamily: "Roboto"),
                  )
                ]),
            new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new RaisedButton(
                      key: null,
                      onPressed: ordenar,
                      color: const Color(0xFFe0e0e0),
                      child: new Text(
                        "Ordernar",
                        style: new TextStyle(
                            fontSize: 20.0,
                            color: const Color(0xFFffffff),
                            fontWeight: FontWeight.w900,
                            fontFamily: "Roboto"),
                      )),
                  new RaisedButton(
                      key: null,
                      onPressed: ordenar,
                      color: const Color(0xFFe0e0e0),
                      child: new Text(
                        "Limpar",
                        style: new TextStyle(
                            fontSize: 20.0,
                            color: const Color(0xFFfff52d),
                            fontWeight: FontWeight.w900,
                            fontFamily: "Roboto"),
                      ))
                ])
          ]),
    );
  }

  void ordenar() {
    int pN, sN, tN;
    pN = int.parse(pNumero.text);
    sN = int.parse(pNumero.text);
    tN = int.parse(pNumero.text);
    pNum.text= "digite a segunda"
    setState(() {
      if ((pN > sN) && (pN > tN)) {
        if (sN > tN) {
          ordenacao =
              pN.toString() + ", " + sN.toString() + ", " + tN.toString();
        } else {
          ordenacao =
              pN.toString() + ", " + sN.toString() + ", " + tN.toString();
        }
      } else if ((sN > pN) && (sN > tN)) {
        if (pN > tN) {
          ordenacao =
              sN.toString() + ", " + pN.toString() + ", " + tN.toString();
        } else {
          ordenacao =
              sN.toString() + ", " + tN.toString() + ", " + pN.toString();
        }
      } else if ((tN > pN) && (tN > sN)) {
        if (pN > tN) {
          ordenacao =
              pN.toString() + ", " + sN.toString() + ", " + tN.toString();
        } else {
          ordenacao =
              pN.toString() + ", " + sN.toString() + ", " + tN.toString();
          
        }
      }
    });
  }
}
